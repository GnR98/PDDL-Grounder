# Generated from pddl.g4 by ANTLR 4.11.1
from antlr4 import *
if __name__ is not None and "." in __name__:
    from .pddlParser import pddlParser
else:
    from pddlParser import pddlParser

# This class defines a complete listener for a parse tree produced by pddlParser.
class pddlListener(ParseTreeListener):

    # Enter a parse tree produced by pddlParser#pddlDoc.
    def enterPddlDoc(self, ctx:pddlParser.PddlDocContext):
        pass

    # Exit a parse tree produced by pddlParser#pddlDoc.
    def exitPddlDoc(self, ctx:pddlParser.PddlDocContext):
        pass


    # Enter a parse tree produced by pddlParser#domain.
    def enterDomain(self, ctx:pddlParser.DomainContext):
        pass

    # Exit a parse tree produced by pddlParser#domain.
    def exitDomain(self, ctx:pddlParser.DomainContext):
        pass


    # Enter a parse tree produced by pddlParser#domainName.
    def enterDomainName(self, ctx:pddlParser.DomainNameContext):
        pass

    # Exit a parse tree produced by pddlParser#domainName.
    def exitDomainName(self, ctx:pddlParser.DomainNameContext):
        pass


    # Enter a parse tree produced by pddlParser#requireDef.
    def enterRequireDef(self, ctx:pddlParser.RequireDefContext):
        pass

    # Exit a parse tree produced by pddlParser#requireDef.
    def exitRequireDef(self, ctx:pddlParser.RequireDefContext):
        pass


    # Enter a parse tree produced by pddlParser#typesDef.
    def enterTypesDef(self, ctx:pddlParser.TypesDefContext):
        pass

    # Exit a parse tree produced by pddlParser#typesDef.
    def exitTypesDef(self, ctx:pddlParser.TypesDefContext):
        pass


    # Enter a parse tree produced by pddlParser#predicatesDef.
    def enterPredicatesDef(self, ctx:pddlParser.PredicatesDefContext):
        pass

    # Exit a parse tree produced by pddlParser#predicatesDef.
    def exitPredicatesDef(self, ctx:pddlParser.PredicatesDefContext):
        pass


    # Enter a parse tree produced by pddlParser#atomicFormulaSkeleton.
    def enterAtomicFormulaSkeleton(self, ctx:pddlParser.AtomicFormulaSkeletonContext):
        pass

    # Exit a parse tree produced by pddlParser#atomicFormulaSkeleton.
    def exitAtomicFormulaSkeleton(self, ctx:pddlParser.AtomicFormulaSkeletonContext):
        pass


    # Enter a parse tree produced by pddlParser#typedVariable.
    def enterTypedVariable(self, ctx:pddlParser.TypedVariableContext):
        pass

    # Exit a parse tree produced by pddlParser#typedVariable.
    def exitTypedVariable(self, ctx:pddlParser.TypedVariableContext):
        pass


    # Enter a parse tree produced by pddlParser#functionsDef.
    def enterFunctionsDef(self, ctx:pddlParser.FunctionsDefContext):
        pass

    # Exit a parse tree produced by pddlParser#functionsDef.
    def exitFunctionsDef(self, ctx:pddlParser.FunctionsDefContext):
        pass


    # Enter a parse tree produced by pddlParser#predicatedVariables.
    def enterPredicatedVariables(self, ctx:pddlParser.PredicatedVariablesContext):
        pass

    # Exit a parse tree produced by pddlParser#predicatedVariables.
    def exitPredicatedVariables(self, ctx:pddlParser.PredicatedVariablesContext):
        pass


    # Enter a parse tree produced by pddlParser#structureDef.
    def enterStructureDef(self, ctx:pddlParser.StructureDefContext):
        pass

    # Exit a parse tree produced by pddlParser#structureDef.
    def exitStructureDef(self, ctx:pddlParser.StructureDefContext):
        pass


    # Enter a parse tree produced by pddlParser#actionDef.
    def enterActionDef(self, ctx:pddlParser.ActionDefContext):
        pass

    # Exit a parse tree produced by pddlParser#actionDef.
    def exitActionDef(self, ctx:pddlParser.ActionDefContext):
        pass


    # Enter a parse tree produced by pddlParser#precondition.
    def enterPrecondition(self, ctx:pddlParser.PreconditionContext):
        pass

    # Exit a parse tree produced by pddlParser#precondition.
    def exitPrecondition(self, ctx:pddlParser.PreconditionContext):
        pass


    # Enter a parse tree produced by pddlParser#precondition_formula.
    def enterPrecondition_formula(self, ctx:pddlParser.Precondition_formulaContext):
        pass

    # Exit a parse tree produced by pddlParser#precondition_formula.
    def exitPrecondition_formula(self, ctx:pddlParser.Precondition_formulaContext):
        pass


    # Enter a parse tree produced by pddlParser#effect.
    def enterEffect(self, ctx:pddlParser.EffectContext):
        pass

    # Exit a parse tree produced by pddlParser#effect.
    def exitEffect(self, ctx:pddlParser.EffectContext):
        pass


    # Enter a parse tree produced by pddlParser#effect_formula.
    def enterEffect_formula(self, ctx:pddlParser.Effect_formulaContext):
        pass

    # Exit a parse tree produced by pddlParser#effect_formula.
    def exitEffect_formula(self, ctx:pddlParser.Effect_formulaContext):
        pass


    # Enter a parse tree produced by pddlParser#processDef.
    def enterProcessDef(self, ctx:pddlParser.ProcessDefContext):
        pass

    # Exit a parse tree produced by pddlParser#processDef.
    def exitProcessDef(self, ctx:pddlParser.ProcessDefContext):
        pass


    # Enter a parse tree produced by pddlParser#process_effect.
    def enterProcess_effect(self, ctx:pddlParser.Process_effectContext):
        pass

    # Exit a parse tree produced by pddlParser#process_effect.
    def exitProcess_effect(self, ctx:pddlParser.Process_effectContext):
        pass


    # Enter a parse tree produced by pddlParser#process_effect_formula.
    def enterProcess_effect_formula(self, ctx:pddlParser.Process_effect_formulaContext):
        pass

    # Exit a parse tree produced by pddlParser#process_effect_formula.
    def exitProcess_effect_formula(self, ctx:pddlParser.Process_effect_formulaContext):
        pass


    # Enter a parse tree produced by pddlParser#multiplication.
    def enterMultiplication(self, ctx:pddlParser.MultiplicationContext):
        pass

    # Exit a parse tree produced by pddlParser#multiplication.
    def exitMultiplication(self, ctx:pddlParser.MultiplicationContext):
        pass


    # Enter a parse tree produced by pddlParser#eventDef.
    def enterEventDef(self, ctx:pddlParser.EventDefContext):
        pass

    # Exit a parse tree produced by pddlParser#eventDef.
    def exitEventDef(self, ctx:pddlParser.EventDefContext):
        pass


    # Enter a parse tree produced by pddlParser#problem.
    def enterProblem(self, ctx:pddlParser.ProblemContext):
        pass

    # Exit a parse tree produced by pddlParser#problem.
    def exitProblem(self, ctx:pddlParser.ProblemContext):
        pass


    # Enter a parse tree produced by pddlParser#problemDecl.
    def enterProblemDecl(self, ctx:pddlParser.ProblemDeclContext):
        pass

    # Exit a parse tree produced by pddlParser#problemDecl.
    def exitProblemDecl(self, ctx:pddlParser.ProblemDeclContext):
        pass


    # Enter a parse tree produced by pddlParser#problemDomain.
    def enterProblemDomain(self, ctx:pddlParser.ProblemDomainContext):
        pass

    # Exit a parse tree produced by pddlParser#problemDomain.
    def exitProblemDomain(self, ctx:pddlParser.ProblemDomainContext):
        pass


    # Enter a parse tree produced by pddlParser#objectDecl.
    def enterObjectDecl(self, ctx:pddlParser.ObjectDeclContext):
        pass

    # Exit a parse tree produced by pddlParser#objectDecl.
    def exitObjectDecl(self, ctx:pddlParser.ObjectDeclContext):
        pass


    # Enter a parse tree produced by pddlParser#sameTypeNamesList.
    def enterSameTypeNamesList(self, ctx:pddlParser.SameTypeNamesListContext):
        pass

    # Exit a parse tree produced by pddlParser#sameTypeNamesList.
    def exitSameTypeNamesList(self, ctx:pddlParser.SameTypeNamesListContext):
        pass


    # Enter a parse tree produced by pddlParser#init.
    def enterInit(self, ctx:pddlParser.InitContext):
        pass

    # Exit a parse tree produced by pddlParser#init.
    def exitInit(self, ctx:pddlParser.InitContext):
        pass


    # Enter a parse tree produced by pddlParser#initEl.
    def enterInitEl(self, ctx:pddlParser.InitElContext):
        pass

    # Exit a parse tree produced by pddlParser#initEl.
    def exitInitEl(self, ctx:pddlParser.InitElContext):
        pass


    # Enter a parse tree produced by pddlParser#nameLiteral.
    def enterNameLiteral(self, ctx:pddlParser.NameLiteralContext):
        pass

    # Exit a parse tree produced by pddlParser#nameLiteral.
    def exitNameLiteral(self, ctx:pddlParser.NameLiteralContext):
        pass


    # Enter a parse tree produced by pddlParser#atomicNameFormula.
    def enterAtomicNameFormula(self, ctx:pddlParser.AtomicNameFormulaContext):
        pass

    # Exit a parse tree produced by pddlParser#atomicNameFormula.
    def exitAtomicNameFormula(self, ctx:pddlParser.AtomicNameFormulaContext):
        pass


    # Enter a parse tree produced by pddlParser#equalLiteral.
    def enterEqualLiteral(self, ctx:pddlParser.EqualLiteralContext):
        pass

    # Exit a parse tree produced by pddlParser#equalLiteral.
    def exitEqualLiteral(self, ctx:pddlParser.EqualLiteralContext):
        pass


    # Enter a parse tree produced by pddlParser#goal.
    def enterGoal(self, ctx:pddlParser.GoalContext):
        pass

    # Exit a parse tree produced by pddlParser#goal.
    def exitGoal(self, ctx:pddlParser.GoalContext):
        pass


    # Enter a parse tree produced by pddlParser#goalDesc.
    def enterGoalDesc(self, ctx:pddlParser.GoalDescContext):
        pass

    # Exit a parse tree produced by pddlParser#goalDesc.
    def exitGoalDesc(self, ctx:pddlParser.GoalDescContext):
        pass



del pddlParser