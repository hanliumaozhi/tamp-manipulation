(define (problem 3obj_problem) (:domain conveyor_belt_domain_coupled)
(:objects
    iiwa - robot
    belt - belt


    bin_0 - bin
    bin_2 - bin
)

(:init
    ;todo: put the initial state's facts and numeric values here
    (free iiwa)
    (ready-to-move iiwa)

    (todo box_0)
    (todo box_1)
    (todo box_2)
    (todo box_3)
    (todo box_4)


    (unblocked box_0 box_0)
    ; (unblocked box_0 box_1)
    ; (unblocked box_0 box_2)
    (unblocked box_0 box_3)
    (unblocked box_0 box_4)

    (unblocked box_1 box_0)
    (unblocked box_1 box_1)
    (unblocked box_1 box_2)
    (unblocked box_1 box_3)
    (unblocked box_1 box_4)

    (unblocked box_2 box_0)
    (unblocked box_2 box_1)
    (unblocked box_2 box_2)
    (unblocked box_2 box_3)
    (unblocked box_2 box_4)

    (unblocked box_3 box_0)
    (unblocked box_3 box_1)
    (unblocked box_3 box_2)
    (unblocked box_3 box_3)
    (unblocked box_3 box_4)

    (unblocked box_4 box_0)
    (unblocked box_4 box_1)
    (unblocked box_4 box_2)
    (unblocked box_4 box_3)
    (unblocked box_4 box_4)

)

(:goal (and
    ;todo: put the goal condition here
    (in box_0 bin_0)
    (in box_3 bin_0)
))

;un-comment the following line if metric is needed
;(:metric minimize (???))
)
