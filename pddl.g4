grammar pddl;



/************* LEXER ****************************/

LP : '(';
RP : ')';
QUOTE : '"';
COMMA : ',';
DASH : '-';
MULTIPLICATION : '*';
DEFINE : 'define';
PROBLEM : 'problem';
DOMAIN : 'domain';
REQUIREMENTS : ':requirements';
TYPES : ':types';
PREDICATES : ':predicates';
FUNCTIONS : ':functions';
ACTION : ':action';
PARAMETERS : ':parameters';
PRECONDITION : ':precondition';
EFFECT : ':effect';
PROCESS : ':process';
EVENT : ':event';
INCREASE : 'increase';
DECREASE : 'decrease';

NAME:    LETTER ANY_CHAR* ;
fragment LETTER : 'a'..'z' | 'A'..'Z';
fragment ANY_CHAR : LETTER | '0'..'9' | '-' | '_';
VARIABLE : '?' LETTER ;
fragment DIGIT: '0'..'9';
NUMBER : ('-')? DIGIT+ ('.' DIGIT+)? | '#t' ;
WS : [ \t\r\n]+ -> skip ;

REQUIRE_KEY
    : ':typing'
    | ':duration-inequalities'
    | ':time'
    | ':fluents'
    | ':adl'
    | ':durative-actions'
    ;

COMPARATOR
	: '>'
	| '>='
	| '<'
	| '<='
	| '='
	;

	/************* Start of grammar *******************/

pddlDoc : domain | problem;

/************* DOMAINS ****************************/

domain
    : '(' 'define' domainName 
	requireDef?
    typesDef?
	predicatesDef?
    functionsDef?
	structureDef*
	RP
    ;

domainName
    : LP DOMAIN NAME RP
    ;

requireDef
	: LP REQUIREMENTS REQUIRE_KEY+ RP
	;

typesDef
	: LP TYPES NAME+ RP
	;

predicatesDef
	: LP PREDICATES atomicFormulaSkeleton+ RP
	;

atomicFormulaSkeleton
	: LP NAME typedVariable+ RP
	;

typedVariable
	: VARIABLE DASH NAME
	;

functionsDef
	: LP FUNCTIONS atomicFormulaSkeleton+ RP
	;

predicatedVariables
	: NAME VARIABLE+
	;

structureDef
	: actionDef
	| processDef
	| eventDef
	;


/************* ACTIONS ****************************/

actionDef
	: LP ACTION NAME
	    PARAMETERS LP typedVariable+ RP
        precondition?
		effect?
		RP
;

precondition
	: PRECONDITION LP 'and' precondition_formula+ RP
	;

precondition_formula
    : LP predicatedVariables RP
	| LP 'not' LP predicatedVariables RP RP
    | LP COMPARATOR LP predicatedVariables RP NUMBER RP
	| LP COMPARATOR LP predicatedVariables RP LP predicatedVariables RP RP
    ;

effect
	: EFFECT LP 'and' effect_formula+ RP
	;

effect_formula
    : LP predicatedVariables RP
	| LP 'not' LP predicatedVariables RP RP
	| LP 'assign' LP predicatedVariables RP NUMBER RP
	;

/************* PROCESSES ****************************/

processDef
	: LP PROCESS NAME
		PARAMETERS LP typedVariable+ RP
		precondition?
		process_effect?
		RP
	;

process_effect
	: EFFECT LP 'and' process_effect_formula+ RP
	;

process_effect_formula
	: LP predicatedVariables RP
	| LP 'not' LP predicatedVariables RP RP
	| LP INCREASE LP predicatedVariables RP multiplication RP
	| LP DECREASE LP predicatedVariables RP multiplication RP
	;

multiplication
	: LP MULTIPLICATION NUMBER NUMBER RP
	| LP MULTIPLICATION LP predicatedVariables RP NUMBER RP
	| LP MULTIPLICATION NUMBER LP predicatedVariables RP RP
	| LP MULTIPLICATION LP predicatedVariables RP LP predicatedVariables RP RP
	| LP MULTIPLICATION NUMBER multiplication RP
	;

/************* EVENTS ****************************/

eventDef
	: LP EVENT NAME
	    PARAMETERS LP typedVariable+ RP
        precondition?
		effect?
		RP
;

/************* PROBLEMS ****************************/

problem
	: '(' 'define' problemDecl
	problemDomain
	objectDecl?
	init
	goal
	RP
	;

problemDecl
	: LP PROBLEM NAME RP
	;

problemDomain
	: LP ':domain' NAME RP
	;

objectDecl
	: LP ':objects' sameTypeNamesList+ RP
	;

sameTypeNamesList
	:NAME+ '-' NAME
	;

init
	: LP ':init' initEl* RP
	;

initEl
	: nameLiteral
	| equalLiteral
	;

nameLiteral
	: atomicNameFormula
	| LP 'not' atomicNameFormula RP
	;

atomicNameFormula
	:LP NAME+ RP
	;

equalLiteral
	:LP '=' atomicNameFormula NUMBER RP
	;

goal
	: LP ':goal' goalDesc RP
	;

goalDesc
	: LP 'and' atomicNameFormula+ RP
	;

