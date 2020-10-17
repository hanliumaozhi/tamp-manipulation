(define (problem 10obj_problem) (:domain conveyor_belt_10obj)
(:objects
    iiwa - robot

    bin_0 - normal_bin
    bin_1 - normal_bin
    bin_2 - normal_bin
    bin_3 - far_bin

    belt - conveyor_belt
)

(:init
    ;todo: put the initial state's facts and numeric values here
    (free iiwa)
    (ready-to-move iiwa)

    (on box_0 belt)
    (on box_1 belt)
    (on box_2 belt)
    (on box_3 belt)
    (on box_4 belt)
    (on box_5 belt)
    (on box_6 belt)
    (on box_7 belt)
    (on box_8 belt)
    (on box_9 belt)

    (unobstructed box_0 box_0)
    (unobstructed box_0 box_1)
    (unobstructed box_0 box_2)
    (unobstructed box_0 box_3)
    (unobstructed box_0 box_4)
    (unobstructed box_0 box_5)
    (unobstructed box_0 box_6)
    (unobstructed box_0 box_7)
    (unobstructed box_0 box_8)
    (unobstructed box_0 box_9)


    (unobstructed box_1 box_0)
    (unobstructed box_1 box_1)
    (unobstructed box_1 box_2)
    (unobstructed box_1 box_3)
    (unobstructed box_1 box_4)
    (unobstructed box_1 box_5)
    (unobstructed box_1 box_6)
    (unobstructed box_1 box_7)
    (unobstructed box_1 box_8)
    (unobstructed box_1 box_9)

    (unobstructed box_2 box_0)
    ; (unobstructed box_2 box_1)
    (unobstructed box_2 box_2)
    (unobstructed box_2 box_3)
    (unobstructed box_2 box_4)
    (unobstructed box_2 box_5)
    (unobstructed box_2 box_6)
    (unobstructed box_2 box_7)
    (unobstructed box_2 box_8)
    (unobstructed box_2 box_9)

    (unobstructed box_3 box_0)
    (unobstructed box_3 box_1)
    (unobstructed box_3 box_2)
    (unobstructed box_3 box_3)
    (unobstructed box_3 box_4)
    (unobstructed box_3 box_5)
    (unobstructed box_3 box_6)
    (unobstructed box_3 box_7)
    (unobstructed box_3 box_8)
    (unobstructed box_3 box_9)

    (unobstructed box_4 box_0)
    (unobstructed box_4 box_1)
    (unobstructed box_4 box_2)
    ; (unobstructed box_4 box_3)
    (unobstructed box_4 box_4)
    (unobstructed box_4 box_5)
    (unobstructed box_4 box_6)
    (unobstructed box_4 box_7)
    (unobstructed box_4 box_8)
    (unobstructed box_4 box_9)

    (unobstructed box_5 box_0)
    (unobstructed box_5 box_1)
    (unobstructed box_5 box_2)
    (unobstructed box_5 box_3)
    (unobstructed box_5 box_4)
    (unobstructed box_5 box_5)
    (unobstructed box_5 box_6)
    (unobstructed box_5 box_7)
    (unobstructed box_5 box_8)
    (unobstructed box_5 box_9)

    (unobstructed box_6 box_0)
    (unobstructed box_6 box_1)
    (unobstructed box_6 box_2)
    (unobstructed box_6 box_3)
    (unobstructed box_6 box_4)
    (unobstructed box_6 box_5)
    (unobstructed box_6 box_6)
    (unobstructed box_6 box_7)
    (unobstructed box_6 box_8)
    (unobstructed box_6 box_9)

    (unobstructed box_7 box_0)
    (unobstructed box_7 box_1)
    (unobstructed box_7 box_2)
    (unobstructed box_7 box_3)
    (unobstructed box_7 box_4)
    (unobstructed box_7 box_5)
    (unobstructed box_7 box_6)
    (unobstructed box_7 box_7)
    (unobstructed box_7 box_8)
    (unobstructed box_7 box_9)

    (unobstructed box_8 box_0)
    (unobstructed box_8 box_1)
    (unobstructed box_8 box_2)
    (unobstructed box_8 box_3)
    (unobstructed box_8 box_4)
    (unobstructed box_8 box_5)
    (unobstructed box_8 box_6)
    (unobstructed box_8 box_7)
    (unobstructed box_8 box_8)
    (unobstructed box_8 box_9)

    (unobstructed box_9 box_0)
    (unobstructed box_9 box_1)
    (unobstructed box_9 box_2)
    (unobstructed box_9 box_3)
    (unobstructed box_9 box_4)
    (unobstructed box_9 box_5)
    (unobstructed box_9 box_6)
    (unobstructed box_9 box_7)
    (unobstructed box_9 box_8)
    (unobstructed box_9 box_9)

)

(:goal (and
    ;todo: put the goal condition here
    (in box_0 bin_3)
    (in box_1 bin_1)
    (in box_2 bin_1)
    (in box_3 bin_0)
    (in box_4 bin_0)
    (in box_5 bin_2)
    (in box_6 bin_2)
    (in box_7 bin_3)
    (in box_8 bin_1)
    ; (in box_9 bin_0)
))

;un-comment the following line if metric is needed
;(:metric minimize (???))
)
