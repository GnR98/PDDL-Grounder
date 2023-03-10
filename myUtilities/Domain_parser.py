import json

def parse_tree_to_json(tree):
    '''It traverses the parse-tree generated by the antlr4 parser and returns the tree in json format 

    Parameters
    ----------
    tree: parse-tree obtained by antlr4

    Returns
    -------
    domain_dict: The parse-tree in a key-value format (dict)

    Writes
    ------
    It writes the result in JSON format as json_result/domain.json
    '''
    json_data = {}

    for i in range (tree.getChildCount()):
        if 'domain' in tree.getChild(i).getText():
            domain_name = getDomainName(tree.getChild(i).getText())
            json_data['domain'] = domain_name
        elif ':requirements' in tree.getChild(i).getText():
            requirements_list = getRequirementsList(tree.getChild(i))
            json_data['requirements'] = requirements_list
        elif ':types' in tree.getChild(i).getText():
            types_list = getTypesList(tree.getChild(i))
            json_data['types'] = types_list
        elif ':predicates' in tree.getChild(i).getText():
            predicates_list = getPredicatesList(tree.getChild(i))
            json_data['predicates'] = predicates_list
        elif ':functions' in tree.getChild(i).getText():
            functions_list = getFunctionsList(tree.getChild(i))
            json_data['functions'] = functions_list 
            #inizializzo qui solo per l'ordine di visualizazione 
            json_data['actions'] = []
            json_data['processes'] = []
            json_data['events'] = []
            ##
        elif ':action' in tree.getChild(i).getText():
            json_data['actions'].append(getAction(tree.getChild(i)))
        elif ':process' in tree.getChild(i).getText():
            json_data['processes'].append(getProcess(tree.getChild(i)))
        elif ':event' in tree.getChild(i).getText():
            json_data['events'].append(getEvent(tree.getChild(i)))

    with open("json_results/domain.json", 'w') as json_file:
       json.dump(json_data, json_file, indent= 4)
    return json_data 

def getDomainName(stringa):
    stringa = stringa.replace("(domain", "")
    stringa = stringa.replace(")", "")
    return stringa.strip()

def getRequirementsList(node):
    result = []
    for child in range (node.getChildCount()):
        stringa = node.getChild(child).getText()
        if stringa != '(' and stringa != ')' and stringa != ':requirements':
            result.append(stringa)
    return result

def getTypesList(node):
    result = []
    for child in range (node.getChildCount()):
        stringa = node.getChild(child).getText()
        if stringa != '(' and stringa != ')' and stringa != ':types':
            result.append(stringa)
    return result

def getPredicatesList(node):
    result = []
    for child in range (node.getChildCount()):
        child_node = node.getChild(child)
        child_string = child_node.getText()
        if child_string != '(' and child_string != ')' and child_string != ':predicates':
            result.append(getPredicate(child_node))
    return result

def getPredicate(node):
    result = {}
    namePredicate = node.getChild(1).getText()
    result["predicateName"] = namePredicate
    result["predicateParameters"] = []
    for i in range (2, node.getChildCount()-1):
         result["predicateParameters"].append(get_parameter_name_type(node.getChild(i).getText()))
    return result

def get_parameter_name_type(parameter_string):
    parameter_name = parameter_string.split("-")[0]
    parameter_type = parameter_string.split("-")[1]
    return {"parameterName" : parameter_name, "parameterType": parameter_type}

def get_function_name_variable(string):
    string = string.replace("?", " ?")
    string = string.split(" ")
    function_name = string[0]
    function_variable = string[1:]
    return [function_name, function_variable]

def getFunctionsList(node):
    result = []
    for child in range (node.getChildCount()):
        child_node = node.getChild(child)
        child_string = child_node.getText()
        if child_string != '(' and child_string != ')' and child_string != ':functions':
            result.append(getFunction(child_node))
    return result

def getFunction(node):
    result = {}
    nameFunction = node.getChild(1).getText()
    result["functionName"] = nameFunction
    result["functionParameters"] = []
    for i in range (2, node.getChildCount()-1):
         result["functionParameters"].append(get_parameter_name_type(node.getChild(i).getText()))
    return result

def getAction(node):
    result = {}
    node = node.getChild(0)
    nameAction = node.getChild(2).getText()
    result["actionName"] = nameAction
    result["actionParameters"] = getParameters(node)
    result["actionPreconditions"] = getPreconditions(node) 
    result["actionEffects"] = getEffects(node)
    return result

def getParameters(node):
    result = []
    for child in range (5, node.getChildCount()-1):
        if node.getChild(child).getText() == ')':
            return result
        else: result.append(get_parameter_name_type(node.getChild(child).getText()))

def getPreconditions (node):
    result = []
    for child in range(node.getChildCount()-1):
        if  ":precondition" in node.getChild(child).getText():
            node = node.getChild(child)
            break
    for child in range (3, node.getChildCount()-1):
        #precondition = process_string(node.getChild(child).getText())
        precondition = getPrecondition(node.getChild(child))
        result.append(precondition)
    return result

def getPrecondition(node):
    string = node.getText()
    #result = {}
    OPERATORS = [">", ">=", "<", "<="]
    preconditionString = process_string(string)
    #result["preconditionString"] = precondition
    precondition = preconditionString.split(" ")
    if precondition[0] == "not":
        result = getNegatedFormula(node.getChild(3), preconditionString, "precondition")
        return result
    elif precondition[0] in OPERATORS:
        result = getComplexFormula(node, preconditionString, "precondition")
        return result
    else:
        result = getBaseFormula(preconditionString, "precondition")
        return result


def getBaseFormula(string, PoE):
    result = {}
    result [PoE+"String"] = string 
    result["isNegated?"] = False
    result["isOperation?"] = False
    precondition = string.split(" ")
    result[PoE+"Name"] = precondition[0]
    result[PoE+"Parameters"] = precondition[1:]
    return result


def getNegatedFormula(node, string, PoE):
    result = {}
    result[PoE+"String"] = string
    result["isNegated?"] = True
    result["isOperation?"] = False
    result[PoE+"Name"] = node.getChild(0).getText()
    result[PoE+"Parameters"] = []
    for child in range(1, node.getChildCount()):
        result[PoE+"Parameters"].append(node.getChild(child).getText())   
    return result

def getComplexFormula(node, string, PoE):
    result = {}
    result[PoE+"String"] = string
    result["isNegated?"] = False
    result["isOperation?"] = True
    result[PoE+"Operation"] = node.getChild(1).getText()
    result[PoE+"Operands"] = []
    for child in range (2, node.getChildCount()-1):
        if node.getChild(child).getText() != "(" and node.getChild(child).getText() != ")":
            result[PoE+"Operands"].append(getOperands(node.getChild(child)))
    return result

def getOperands(node):
    result = {}
    if node.getChildCount() == 0:
        if node.getText() == "#t":
            result["operandName"] = "Time"
        else: result["operandName"] = "Constant"        
        result["operandValue"] = node.getText()
        result["isOperation?"] = False
    elif "(" not in node.getText():
        result["operandName"] = get_function_name_variable(node.getText())[0]
        result["operandVariables"] = get_function_name_variable(node.getText())[1]
        result["isOperation?"] = False
    else :
        result = getEffect(node,"operand")
    return result
    
    
    
    


"""
def getEffects(node):
    result = []
    for child in range(node.getChildCount()-1):
        if  ":effect" in node.getChild(child).getText():
            node = node.getChild(child)
            break
    for child in range (3, node.getChildCount()-1):
        effect = process_string(node.getChild(child).getText())
        result.append(effect)
    return result
"""

def getEffects(node):
    result = []
    for child in range(node.getChildCount()-1):
        if  ":effect" in node.getChild(child).getText():
            node = node.getChild(child)
            break
    for child in range (3, node.getChildCount()-1):
        effect = getEffect(node.getChild(child), "effect")
        result.append(effect)
    return result

def getEffect(node, effectOrOperand):
    string = node.getText()
    OPERATORS = ["assign", "increase", "decrease", "*"]
    effectString = process_string(string)
    effect = effectString.split(" ")
    if effect[0] == "not":
        result = getNegatedFormula(node.getChild(3), effectString, "effect")
        return result
    elif effect[0] in OPERATORS:
        result = getComplexFormula(node, effectString, effectOrOperand)
        return result
    else:
        result = getBaseFormula(effectString, "effect")
        return result


def getProcess(node):
    result = {}
    node = node.getChild(0)
    nameProcess = node.getChild(2).getText()
    result["processName"] = nameProcess
    result["processParameters"] = getParameters(node)
    result["processPreconditions"] = getPreconditions(node) 
    result["processEffects"] = getEffects(node)
    return result

    

def getEvent(node):
    result = {}
    node = node.getChild(0)
    nameEvent = node.getChild(2).getText()
    result["eventName"] = nameEvent
    result["eventParameters"] = getParameters(node)
    result["eventPreconditions"] = getPreconditions(node) 
    result["eventEffects"] = getEffects(node)
    return result

#rimuove parentesi e aggiunge spazi
def process_string(string):
    string = string[1:-1]
    string = string.replace("?", " ?")
    string = string.replace("("," (")
    string = string.replace("*", "* ")
    return string