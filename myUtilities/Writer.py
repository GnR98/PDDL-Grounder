def write_grounded_pddl(dict):
    f = open("results/domain_grounded.pddl", "w")
    for action in dict["actions"]:
        f.write("(:action " + action["actionName"] + "\n")
        f.write(" "*4 + ":parameters ()" + "\n")
        f.write(" "*4 + ":precondition (and" + "\n")
        for precondition in action["preconditions"]:
            f.write(" "*6 + precondition + "\n")
        f.write(" "*4 +")"+ "\n")
        f.write(" "*4 + ":effect (and" + "\n")
        for effect in action["effects"]:
            f.write(" "*6 + effect + "\n")
        f.write(" "*4 +")"+ "\n")
        f.write(")" + "\n")

    for event in dict["events"]:
        f.write("(:event " + event["eventName"] + "\n")
        f.write(" "*4 + ":parameters ()" + "\n")
        f.write(" "*4 + ":precondition (and" + "\n")
        for precondition in event["preconditions"]:
            f.write(" "*6 + precondition + "\n")
        f.write(" "*4 +")"+ "\n")
        f.write(" "*4 + ":effect (and" + "\n")
        for effect in event["effects"]:
            f.write(" "*6 + effect + "\n")
        f.write(" "*4 +")"+ "\n")
        f.write(")" + "\n")

    for process in dict["processes"]:
        f.write("(:process " + process["processName"] + "\n")
        f.write(" "*4 + ":parameters ()" + "\n")
        f.write(" "*4 + ":precondition (and" + "\n")
        for precondition in process["preconditions"]:
            f.write(" "*6 + precondition + "\n")
        f.write(" "*4 +")"+ "\n")
        f.write(" "*4 + ":effect (and" + "\n")
        for effect in process["effects"]:
            f.write(" "*6 + effect + "\n")
        f.write(" "*4 +")"+ "\n")
        f.write(")" + "\n")

    f.close() 