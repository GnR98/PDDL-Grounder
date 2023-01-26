import click
from antlr4 import *
#genero con antlr4 -Dlanguage=python3 pddl.g4 -o antlr4_directory
from antlr4_directory.pddlLexer import pddlLexer
from antlr4_directory.pddlParser import pddlParser
from myUtilities import Domain_parser
from myUtilities import Problem_parser
from myUtilities import Grounding
from myUtilities import Writer

@click.command()
@click.option('--domain', default="domain.pddl", help='Name of the PDDL domain file. Default: domain.pddl.')
@click.option('--problem', default="problem-1.pddl", help='Name of the PDDL problem file. Default: problem-1.pddl.')

def run(domain="domain.pddl", problem="problem-1.pddl"):

       def antlr_parser(string):
              try:
                     input_stream = FileStream("PDDL_Files/"+string)
              except:
                     print("File "+string+" non presente nella cartella PDDL_Files")
                     exit()
              lexer = pddlLexer(input_stream)
              token_stream = CommonTokenStream(lexer)
              parser = pddlParser(token_stream)

              return parser

       domain_tree = antlr_parser(domain).domain()
       domain_dict = Domain_parser.parse_tree_to_json(domain_tree)

       problem_tree = antlr_parser(problem).problem()
       problem_dict = Problem_parser.parse_tree_to_json(problem_tree)

       dict_grounded_problem = Grounding.makeGrounding(domain_dict,problem_dict)

       Writer.write_grounded_pddl(dict_grounded_problem)

       print("Grounding done successfully, the result is stored in the ""results"" folder")

       
if __name__ == '__main__':
    run()
