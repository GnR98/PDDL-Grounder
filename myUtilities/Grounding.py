from itertools import product
import json

def makeGrounding(domain_dict : dict, problem_dict : dict):
    '''Given dictionaries representing the domain and the problem , returns a dictionary representing the grounded domain

        Parameters
        ----------
        domain_dict: dict representing the pddl domain
        problem_dict: dict representing the pddl problem

        Returns
        -------
        grounded_domain_dict: dict representing the actions,processes and events grounded

        Writes
        ------
        It writes the result in JSON format as json_result/grounding_result.json
    '''
  
    def removeDash(string):
        string = string.split("-")[0]
        return string
    
    def getGroundedName(actionName, parameters):
        groundedName = actionName
        for i in range(len(parameters)):
            groundedName = groundedName+"_"+removeDash(parameters[i])
        return groundedName

    #la stringa è per sapere se sia precondition o effect
    def getSimpleGroundedPredicate(predicate, combination, stringa):
        #print(predicate)
        result = predicate[stringa+"Name"]
        for parameter in predicate[stringa+"Parameters"]:
            for istance in combination:
                if parameter in istance:
                    result = result + " " + removeDash(istance)
        result = "(" + result + ")"
        return result


    def getGroundedPreconditionsOrEffects(action, combination, preconditionOrEffect: str):
        groundedResult = []
        for dict in action:
            if dict["isOperation?"]:
                result = getComplexGroundedPredicate(dict, combination,preconditionOrEffect )
                groundedResult.append(result)
            elif dict["isNegated?"]:
                result = getSimpleGroundedPredicate(dict, combination, preconditionOrEffect)
                result = "(not "+result+")"
                groundedResult.append(result)
            else :
                result = getSimpleGroundedPredicate(dict, combination, preconditionOrEffect)
                groundedResult.append(result)
        return groundedResult
    
    def getComplexGroundedPredicate(predicate, combination, stringa):
        result = predicate[stringa+"Operation"]+" "
        for operand in predicate[stringa+"Operands"]:
            if operand["isOperation?"]:
                result = result+getComplexGroundedPredicate(operand,combination, "operand")
            elif operand["operandName"] == "Time" or operand["operandName"] == "Constant":
                result =result+" "+operand["operandValue"]
            else: 
                result = result+getSimpleGroundedOperand(operand,combination)
        result = "(" + result + ")"
        return result

    def getSimpleGroundedOperand(operand,combination):
        result = operand["operandName"]
        for variable in operand["operandVariables"]:
            for istance in combination:
                if variable in istance:
                    result = result + " " + removeDash(istance)
        result = "(" + result + ")"
        return result



    def get_combinations(objects_list, parameters_list):
        # Creiamo una lista vuota per salvare le combinazioni
        combinations = []
        # Creiamo un dizionario per salvare gli objectIstances in base al loro tipo
        objects_dict = {}
        for obj in objects_list:
            objects_dict[obj["objectType"]] = obj["objectIstances"]
        # Iteriamo su ogni oggetto nella lista dei parametri
        for param in parameters_list:
            # Prendiamo il tipo dell'oggetto dalla lista dei parametri
            param_type = param["parameterType"]
            # Prendiamo il nome del parametro dalla lista dei parametri
            param_name = param["parameterName"]
            # Prendiamo la lista degli objectIstances corrispondenti al tipo del parametro
            param_objects = objects_dict[param_type]
            # Creiamo una lista vuota per salvare le combinazioni per questo parametro
            param_combinations = []
            # Iteriamo su ogni oggetto nella lista degli objectIstances
            for obj in param_objects:
                # Aggiungiamo l'oggetto alla lista delle combinazioni per questo parametro
                param_combinations.append(obj + "-" + param_name)
            # Aggiungiamo la lista delle combinazioni per questo parametro alla lista delle combinazioni globali
            combinations.append(param_combinations)
        # Utilizziamo la funzione product per generare tutte le combinazioni possibili
        result = list(product(*combinations))
        return result

    objects = problem_dict["objects"]

    result = {}
    result["actions"]=[]
    result["events"]=[]
    result["processes"]=[]
    for action in domain_dict["actions"]:
        actionName = action["actionName"]
        actionParameters = action["actionParameters"]
        actionPreconditions = action["actionPreconditions"]
        actionEffects = action["actionEffects"]
        combinations = get_combinations(objects,actionParameters)
        #print(combinations)
        
        for combination in combinations:
            action_grounded = {}
            actionGroundedName = getGroundedName(actionName, combination)
            action_grounded["actionName"] = actionGroundedName
            actionGroundedPreconditions = getGroundedPreconditionsOrEffects(actionPreconditions, combination, "precondition")
            action_grounded["preconditions"] = actionGroundedPreconditions
            actionGroundedEffects = getGroundedPreconditionsOrEffects(actionEffects,combination, "effect")
            action_grounded["effects"] = actionGroundedEffects
            result["actions"].append(action_grounded)

    
    for event in domain_dict["events"]:
        eventName = event["eventName"]
        eventParameters = event["eventParameters"]
        eventPreconditions = event["eventPreconditions"]
        eventEffects = event["eventEffects"]
        combinations = get_combinations(objects,eventParameters)
        #print(combinations)
        
        for combination in combinations:
            event_grounded = {}
            eventGroundedName = getGroundedName(eventName, combination)
            event_grounded["eventName"] = eventGroundedName
            eventGroundedPreconditions = getGroundedPreconditionsOrEffects(eventPreconditions, combination, "precondition")
            event_grounded["preconditions"] = eventGroundedPreconditions
            eventGroundedEffects = getGroundedPreconditionsOrEffects(eventEffects,combination, "effect")
            event_grounded["effects"] = eventGroundedEffects
            result["events"].append(event_grounded)


    
    for process in domain_dict["processes"]:
        processName = process["processName"]
        processParameters = process["processParameters"]
        processPreconditions = process["processPreconditions"]
        processEffects = process["processEffects"]
        combinations = get_combinations(objects,processParameters)
        #print(combinations)
        
        for combination in combinations:
            process_grounded = {}
            processGroundedName = getGroundedName(processName, combination)
            process_grounded["processName"] = processGroundedName
            processGroundedPreconditions = getGroundedPreconditionsOrEffects(processPreconditions, combination, "precondition")
            process_grounded["preconditions"] = processGroundedPreconditions
            processGroundedEffects = getGroundedPreconditionsOrEffects(processEffects,combination, "effect")
            process_grounded["effects"] = processGroundedEffects
            result["processes"].append(process_grounded)

    with open("json_results/grounding_result.json", 'w') as json_file:
       json.dump(result, json_file, indent= 4)

    return result
    
   
    




    

