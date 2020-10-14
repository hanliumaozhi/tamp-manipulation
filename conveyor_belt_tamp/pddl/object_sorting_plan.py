#!/usr/bin/env python

import time
from pathlib import Path

from causal_graph_planner import CausalGraphTampPlanner

drake_path = str(Path(__file__).parent.parent.parent.absolute())


from causal_graph.tools import build_causal_graph, get_subproblems, generate_subtask
from search_tree.tamp_node import PddlTampNode
from search_tree.tamp_tree import PddlTree
from search_tree.multi_wp_motion_plan_runner import MultiWPStaionaryManipMotionPlanRunner

from pyperplan import _parse, _ground

TRAJ_OPTION = "ddp"
MULTI_WP = True

def main():
    # domain_file = drake_path + "/conveyor_belt_tamp/pddl/throw_domain.pddl"
    # problem_file = drake_path + "/conveyor_belt_tamp/pddl/throw_problem.pddl"
    domain_file = drake_path + "/conveyor_belt_tamp/pddl/object_sorting/domain_10obj.pddl"
    problem_file = drake_path + "/conveyor_belt_tamp/pddl/object_sorting/problem_10obj.pddl"
    # domain_file = drake_path + "/conveyor_belt_tamp/pddl/object_sorting/domain_7obj.pddl"
    # problem_file = drake_path + "/conveyor_belt_tamp/pddl/object_sorting/problem_7obj.pddl"
    # domain_file = drake_path + "/conveyor_belt_tamp/pddl/object_sorting/domain.pddl"
    # problem_file = drake_path + "/conveyor_belt_tamp/pddl/object_sorting/problem.pddl"

    problem = _parse(domain_file, problem_file)
    task = _ground(problem)

    geo_setup_file = drake_path + "/conveyor_belt_tamp/setup/object_sorting/geo_setup.json"
    traj_setup_file = drake_path + "/conveyor_belt_tamp/setup/object_sorting/traj_setup.json"
    # geo_setup_file = drake_path + "/conveyor_belt_tamp/setup/object_sorting_multi_sol/geo_setup.json"
    # traj_setup_file = drake_path + "/conveyor_belt_tamp/setup/object_sorting_multi_sol/traj_setup.json"

    motion_planner = MultiWPStaionaryManipMotionPlanRunner(
        geo_setup_file, traj_setup_file
    )

    planner = CausalGraphTampPlanner(task, motion_planner)

    start = time.time()
    planner.plan(option=TRAJ_OPTION)
    # planner.plan_multiple(n_sols=-1, total_depth_limit=-1, option="ddp", show=False)
    end = time.time()
    print("Total Planning Time: ", end - start, "sec")
    
    planner.save_traj()
    planner.save_move_query_sequence()
    print("Branching Factors", planner.branching_factor)
    print("Tree Size", planner.num_nodes)

if __name__=="__main__":
    main()