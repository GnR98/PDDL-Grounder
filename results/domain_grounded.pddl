(:action startMoving_robot1_roomA_roomA
    :parameters ()
    :precondition (and
      (link roomA roomA)
      (not (inMovement robot1))
      (atRobot robot1 roomA)
      (allowed robot1 roomA)
      (handsFull robot1)
    )
    :effect (and
      (not (atRobot robot1 roomA))
      (ismoving robot1 roomA roomA)
      (inMovement robot1)
      (assign (distanceRun robot1 roomA roomA) 0)
    )
)
(:action startMoving_robot1_roomA_roomB
    :parameters ()
    :precondition (and
      (link roomA roomB)
      (not (inMovement robot1))
      (atRobot robot1 roomA)
      (allowed robot1 roomB)
      (handsFull robot1)
    )
    :effect (and
      (not (atRobot robot1 roomA))
      (ismoving robot1 roomA roomB)
      (inMovement robot1)
      (assign (distanceRun robot1 roomA roomB) 0)
    )
)
(:action startMoving_robot1_roomA_roomC
    :parameters ()
    :precondition (and
      (link roomA roomC)
      (not (inMovement robot1))
      (atRobot robot1 roomA)
      (allowed robot1 roomC)
      (handsFull robot1)
    )
    :effect (and
      (not (atRobot robot1 roomA))
      (ismoving robot1 roomA roomC)
      (inMovement robot1)
      (assign (distanceRun robot1 roomA roomC) 0)
    )
)
(:action startMoving_robot1_roomB_roomA
    :parameters ()
    :precondition (and
      (link roomB roomA)
      (not (inMovement robot1))
      (atRobot robot1 roomB)
      (allowed robot1 roomA)
      (handsFull robot1)
    )
    :effect (and
      (not (atRobot robot1 roomB))
      (ismoving robot1 roomB roomA)
      (inMovement robot1)
      (assign (distanceRun robot1 roomB roomA) 0)
    )
)
(:action startMoving_robot1_roomB_roomB
    :parameters ()
    :precondition (and
      (link roomB roomB)
      (not (inMovement robot1))
      (atRobot robot1 roomB)
      (allowed robot1 roomB)
      (handsFull robot1)
    )
    :effect (and
      (not (atRobot robot1 roomB))
      (ismoving robot1 roomB roomB)
      (inMovement robot1)
      (assign (distanceRun robot1 roomB roomB) 0)
    )
)
(:action startMoving_robot1_roomB_roomC
    :parameters ()
    :precondition (and
      (link roomB roomC)
      (not (inMovement robot1))
      (atRobot robot1 roomB)
      (allowed robot1 roomC)
      (handsFull robot1)
    )
    :effect (and
      (not (atRobot robot1 roomB))
      (ismoving robot1 roomB roomC)
      (inMovement robot1)
      (assign (distanceRun robot1 roomB roomC) 0)
    )
)
(:action startMoving_robot1_roomC_roomA
    :parameters ()
    :precondition (and
      (link roomC roomA)
      (not (inMovement robot1))
      (atRobot robot1 roomC)
      (allowed robot1 roomA)
      (handsFull robot1)
    )
    :effect (and
      (not (atRobot robot1 roomC))
      (ismoving robot1 roomC roomA)
      (inMovement robot1)
      (assign (distanceRun robot1 roomC roomA) 0)
    )
)
(:action startMoving_robot1_roomC_roomB
    :parameters ()
    :precondition (and
      (link roomC roomB)
      (not (inMovement robot1))
      (atRobot robot1 roomC)
      (allowed robot1 roomB)
      (handsFull robot1)
    )
    :effect (and
      (not (atRobot robot1 roomC))
      (ismoving robot1 roomC roomB)
      (inMovement robot1)
      (assign (distanceRun robot1 roomC roomB) 0)
    )
)
(:action startMoving_robot1_roomC_roomC
    :parameters ()
    :precondition (and
      (link roomC roomC)
      (not (inMovement robot1))
      (atRobot robot1 roomC)
      (allowed robot1 roomC)
      (handsFull robot1)
    )
    :effect (and
      (not (atRobot robot1 roomC))
      (ismoving robot1 roomC roomC)
      (inMovement robot1)
      (assign (distanceRun robot1 roomC roomC) 0)
    )
)
(:action startMoving_robot2_roomA_roomA
    :parameters ()
    :precondition (and
      (link roomA roomA)
      (not (inMovement robot2))
      (atRobot robot2 roomA)
      (allowed robot2 roomA)
      (handsFull robot2)
    )
    :effect (and
      (not (atRobot robot2 roomA))
      (ismoving robot2 roomA roomA)
      (inMovement robot2)
      (assign (distanceRun robot2 roomA roomA) 0)
    )
)
(:action startMoving_robot2_roomA_roomB
    :parameters ()
    :precondition (and
      (link roomA roomB)
      (not (inMovement robot2))
      (atRobot robot2 roomA)
      (allowed robot2 roomB)
      (handsFull robot2)
    )
    :effect (and
      (not (atRobot robot2 roomA))
      (ismoving robot2 roomA roomB)
      (inMovement robot2)
      (assign (distanceRun robot2 roomA roomB) 0)
    )
)
(:action startMoving_robot2_roomA_roomC
    :parameters ()
    :precondition (and
      (link roomA roomC)
      (not (inMovement robot2))
      (atRobot robot2 roomA)
      (allowed robot2 roomC)
      (handsFull robot2)
    )
    :effect (and
      (not (atRobot robot2 roomA))
      (ismoving robot2 roomA roomC)
      (inMovement robot2)
      (assign (distanceRun robot2 roomA roomC) 0)
    )
)
(:action startMoving_robot2_roomB_roomA
    :parameters ()
    :precondition (and
      (link roomB roomA)
      (not (inMovement robot2))
      (atRobot robot2 roomB)
      (allowed robot2 roomA)
      (handsFull robot2)
    )
    :effect (and
      (not (atRobot robot2 roomB))
      (ismoving robot2 roomB roomA)
      (inMovement robot2)
      (assign (distanceRun robot2 roomB roomA) 0)
    )
)
(:action startMoving_robot2_roomB_roomB
    :parameters ()
    :precondition (and
      (link roomB roomB)
      (not (inMovement robot2))
      (atRobot robot2 roomB)
      (allowed robot2 roomB)
      (handsFull robot2)
    )
    :effect (and
      (not (atRobot robot2 roomB))
      (ismoving robot2 roomB roomB)
      (inMovement robot2)
      (assign (distanceRun robot2 roomB roomB) 0)
    )
)
(:action startMoving_robot2_roomB_roomC
    :parameters ()
    :precondition (and
      (link roomB roomC)
      (not (inMovement robot2))
      (atRobot robot2 roomB)
      (allowed robot2 roomC)
      (handsFull robot2)
    )
    :effect (and
      (not (atRobot robot2 roomB))
      (ismoving robot2 roomB roomC)
      (inMovement robot2)
      (assign (distanceRun robot2 roomB roomC) 0)
    )
)
(:action startMoving_robot2_roomC_roomA
    :parameters ()
    :precondition (and
      (link roomC roomA)
      (not (inMovement robot2))
      (atRobot robot2 roomC)
      (allowed robot2 roomA)
      (handsFull robot2)
    )
    :effect (and
      (not (atRobot robot2 roomC))
      (ismoving robot2 roomC roomA)
      (inMovement robot2)
      (assign (distanceRun robot2 roomC roomA) 0)
    )
)
(:action startMoving_robot2_roomC_roomB
    :parameters ()
    :precondition (and
      (link roomC roomB)
      (not (inMovement robot2))
      (atRobot robot2 roomC)
      (allowed robot2 roomB)
      (handsFull robot2)
    )
    :effect (and
      (not (atRobot robot2 roomC))
      (ismoving robot2 roomC roomB)
      (inMovement robot2)
      (assign (distanceRun robot2 roomC roomB) 0)
    )
)
(:action startMoving_robot2_roomC_roomC
    :parameters ()
    :precondition (and
      (link roomC roomC)
      (not (inMovement robot2))
      (atRobot robot2 roomC)
      (allowed robot2 roomC)
      (handsFull robot2)
    )
    :effect (and
      (not (atRobot robot2 roomC))
      (ismoving robot2 roomC roomC)
      (inMovement robot2)
      (assign (distanceRun robot2 roomC roomC) 0)
    )
)
(:action startCharging_robot1
    :parameters ()
    :precondition (and
      (> (battery robot1) 20)
      (inMovement robot1)
    )
    :effect (and
      (not (inMovement robot1))
      (ischarging robot1)
    )
)
(:action startCharging_robot2
    :parameters ()
    :precondition (and
      (> (battery robot2) 20)
      (inMovement robot2)
    )
    :effect (and
      (not (inMovement robot2))
      (ischarging robot2)
    )
)
(:action stopCharging_robot1
    :parameters ()
    :precondition (and
      (ischarging robot1)
    )
    :effect (and
      (not (ischarging robot1))
      (inMovement robot1)
    )
)
(:action stopCharging_robot2
    :parameters ()
    :precondition (and
      (ischarging robot2)
    )
    :effect (and
      (not (ischarging robot2))
      (inMovement robot2)
    )
)
(:action pick_ball1_robot1_roomA
    :parameters ()
    :precondition (and
      (> (battery robot1) 20)
      (atRobot robot1 roomA)
      (atObject ball1 roomA)
      (not (handsFull robot1))
    )
    :effect (and
      (holding robot1 ball1)
      (not (atObject ball1 roomA))
      (handsFull robot1)
    )
)
(:action pick_ball1_robot1_roomB
    :parameters ()
    :precondition (and
      (> (battery robot1) 20)
      (atRobot robot1 roomB)
      (atObject ball1 roomB)
      (not (handsFull robot1))
    )
    :effect (and
      (holding robot1 ball1)
      (not (atObject ball1 roomB))
      (handsFull robot1)
    )
)
(:action pick_ball1_robot1_roomC
    :parameters ()
    :precondition (and
      (> (battery robot1) 20)
      (atRobot robot1 roomC)
      (atObject ball1 roomC)
      (not (handsFull robot1))
    )
    :effect (and
      (holding robot1 ball1)
      (not (atObject ball1 roomC))
      (handsFull robot1)
    )
)
(:action pick_ball1_robot2_roomA
    :parameters ()
    :precondition (and
      (> (battery robot2) 20)
      (atRobot robot2 roomA)
      (atObject ball1 roomA)
      (not (handsFull robot2))
    )
    :effect (and
      (holding robot2 ball1)
      (not (atObject ball1 roomA))
      (handsFull robot2)
    )
)
(:action pick_ball1_robot2_roomB
    :parameters ()
    :precondition (and
      (> (battery robot2) 20)
      (atRobot robot2 roomB)
      (atObject ball1 roomB)
      (not (handsFull robot2))
    )
    :effect (and
      (holding robot2 ball1)
      (not (atObject ball1 roomB))
      (handsFull robot2)
    )
)
(:action pick_ball1_robot2_roomC
    :parameters ()
    :precondition (and
      (> (battery robot2) 20)
      (atRobot robot2 roomC)
      (atObject ball1 roomC)
      (not (handsFull robot2))
    )
    :effect (and
      (holding robot2 ball1)
      (not (atObject ball1 roomC))
      (handsFull robot2)
    )
)
(:action drop_ball1_robot1_roomA
    :parameters ()
    :precondition (and
      (> (battery robot1) 20)
      (atRobot robot1 roomA)
      (holding robot1 ball1)
    )
    :effect (and
      (not (holding robot1 ball1))
      (atObject ball1 roomA)
      (not (handsFull robot1))
    )
)
(:action drop_ball1_robot1_roomB
    :parameters ()
    :precondition (and
      (> (battery robot1) 20)
      (atRobot robot1 roomB)
      (holding robot1 ball1)
    )
    :effect (and
      (not (holding robot1 ball1))
      (atObject ball1 roomB)
      (not (handsFull robot1))
    )
)
(:action drop_ball1_robot1_roomC
    :parameters ()
    :precondition (and
      (> (battery robot1) 20)
      (atRobot robot1 roomC)
      (holding robot1 ball1)
    )
    :effect (and
      (not (holding robot1 ball1))
      (atObject ball1 roomC)
      (not (handsFull robot1))
    )
)
(:action drop_ball1_robot2_roomA
    :parameters ()
    :precondition (and
      (> (battery robot2) 20)
      (atRobot robot2 roomA)
      (holding robot2 ball1)
    )
    :effect (and
      (not (holding robot2 ball1))
      (atObject ball1 roomA)
      (not (handsFull robot2))
    )
)
(:action drop_ball1_robot2_roomB
    :parameters ()
    :precondition (and
      (> (battery robot2) 20)
      (atRobot robot2 roomB)
      (holding robot2 ball1)
    )
    :effect (and
      (not (holding robot2 ball1))
      (atObject ball1 roomB)
      (not (handsFull robot2))
    )
)
(:action drop_ball1_robot2_roomC
    :parameters ()
    :precondition (and
      (> (battery robot2) 20)
      (atRobot robot2 roomC)
      (holding robot2 ball1)
    )
    :effect (and
      (not (holding robot2 ball1))
      (atObject ball1 roomC)
      (not (handsFull robot2))
    )
)
(:event endMoving_robot1_roomA_roomA
    :parameters ()
    :precondition (and
      (link roomA roomA)
      (ismoving robot1 roomA roomA)
      (inMovement robot1)
      (> (battery robot1) 20)
      (>= (distanceRun robot1 roomA roomA)(distance roomA roomA))
    )
    :effect (and
      (atRobot robot1 roomA)
      (not (ismoving robot1 roomA roomA))
      (not (inMovement robot1))
    )
)
(:event endMoving_robot1_roomA_roomB
    :parameters ()
    :precondition (and
      (link roomA roomB)
      (ismoving robot1 roomA roomB)
      (inMovement robot1)
      (> (battery robot1) 20)
      (>= (distanceRun robot1 roomA roomB)(distance roomA roomB))
    )
    :effect (and
      (atRobot robot1 roomB)
      (not (ismoving robot1 roomA roomB))
      (not (inMovement robot1))
    )
)
(:event endMoving_robot1_roomA_roomC
    :parameters ()
    :precondition (and
      (link roomA roomC)
      (ismoving robot1 roomA roomC)
      (inMovement robot1)
      (> (battery robot1) 20)
      (>= (distanceRun robot1 roomA roomC)(distance roomA roomC))
    )
    :effect (and
      (atRobot robot1 roomC)
      (not (ismoving robot1 roomA roomC))
      (not (inMovement robot1))
    )
)
(:event endMoving_robot1_roomB_roomA
    :parameters ()
    :precondition (and
      (link roomB roomA)
      (ismoving robot1 roomB roomA)
      (inMovement robot1)
      (> (battery robot1) 20)
      (>= (distanceRun robot1 roomB roomA)(distance roomB roomA))
    )
    :effect (and
      (atRobot robot1 roomA)
      (not (ismoving robot1 roomB roomA))
      (not (inMovement robot1))
    )
)
(:event endMoving_robot1_roomB_roomB
    :parameters ()
    :precondition (and
      (link roomB roomB)
      (ismoving robot1 roomB roomB)
      (inMovement robot1)
      (> (battery robot1) 20)
      (>= (distanceRun robot1 roomB roomB)(distance roomB roomB))
    )
    :effect (and
      (atRobot robot1 roomB)
      (not (ismoving robot1 roomB roomB))
      (not (inMovement robot1))
    )
)
(:event endMoving_robot1_roomB_roomC
    :parameters ()
    :precondition (and
      (link roomB roomC)
      (ismoving robot1 roomB roomC)
      (inMovement robot1)
      (> (battery robot1) 20)
      (>= (distanceRun robot1 roomB roomC)(distance roomB roomC))
    )
    :effect (and
      (atRobot robot1 roomC)
      (not (ismoving robot1 roomB roomC))
      (not (inMovement robot1))
    )
)
(:event endMoving_robot1_roomC_roomA
    :parameters ()
    :precondition (and
      (link roomC roomA)
      (ismoving robot1 roomC roomA)
      (inMovement robot1)
      (> (battery robot1) 20)
      (>= (distanceRun robot1 roomC roomA)(distance roomC roomA))
    )
    :effect (and
      (atRobot robot1 roomA)
      (not (ismoving robot1 roomC roomA))
      (not (inMovement robot1))
    )
)
(:event endMoving_robot1_roomC_roomB
    :parameters ()
    :precondition (and
      (link roomC roomB)
      (ismoving robot1 roomC roomB)
      (inMovement robot1)
      (> (battery robot1) 20)
      (>= (distanceRun robot1 roomC roomB)(distance roomC roomB))
    )
    :effect (and
      (atRobot robot1 roomB)
      (not (ismoving robot1 roomC roomB))
      (not (inMovement robot1))
    )
)
(:event endMoving_robot1_roomC_roomC
    :parameters ()
    :precondition (and
      (link roomC roomC)
      (ismoving robot1 roomC roomC)
      (inMovement robot1)
      (> (battery robot1) 20)
      (>= (distanceRun robot1 roomC roomC)(distance roomC roomC))
    )
    :effect (and
      (atRobot robot1 roomC)
      (not (ismoving robot1 roomC roomC))
      (not (inMovement robot1))
    )
)
(:event endMoving_robot2_roomA_roomA
    :parameters ()
    :precondition (and
      (link roomA roomA)
      (ismoving robot2 roomA roomA)
      (inMovement robot2)
      (> (battery robot2) 20)
      (>= (distanceRun robot2 roomA roomA)(distance roomA roomA))
    )
    :effect (and
      (atRobot robot2 roomA)
      (not (ismoving robot2 roomA roomA))
      (not (inMovement robot2))
    )
)
(:event endMoving_robot2_roomA_roomB
    :parameters ()
    :precondition (and
      (link roomA roomB)
      (ismoving robot2 roomA roomB)
      (inMovement robot2)
      (> (battery robot2) 20)
      (>= (distanceRun robot2 roomA roomB)(distance roomA roomB))
    )
    :effect (and
      (atRobot robot2 roomB)
      (not (ismoving robot2 roomA roomB))
      (not (inMovement robot2))
    )
)
(:event endMoving_robot2_roomA_roomC
    :parameters ()
    :precondition (and
      (link roomA roomC)
      (ismoving robot2 roomA roomC)
      (inMovement robot2)
      (> (battery robot2) 20)
      (>= (distanceRun robot2 roomA roomC)(distance roomA roomC))
    )
    :effect (and
      (atRobot robot2 roomC)
      (not (ismoving robot2 roomA roomC))
      (not (inMovement robot2))
    )
)
(:event endMoving_robot2_roomB_roomA
    :parameters ()
    :precondition (and
      (link roomB roomA)
      (ismoving robot2 roomB roomA)
      (inMovement robot2)
      (> (battery robot2) 20)
      (>= (distanceRun robot2 roomB roomA)(distance roomB roomA))
    )
    :effect (and
      (atRobot robot2 roomA)
      (not (ismoving robot2 roomB roomA))
      (not (inMovement robot2))
    )
)
(:event endMoving_robot2_roomB_roomB
    :parameters ()
    :precondition (and
      (link roomB roomB)
      (ismoving robot2 roomB roomB)
      (inMovement robot2)
      (> (battery robot2) 20)
      (>= (distanceRun robot2 roomB roomB)(distance roomB roomB))
    )
    :effect (and
      (atRobot robot2 roomB)
      (not (ismoving robot2 roomB roomB))
      (not (inMovement robot2))
    )
)
(:event endMoving_robot2_roomB_roomC
    :parameters ()
    :precondition (and
      (link roomB roomC)
      (ismoving robot2 roomB roomC)
      (inMovement robot2)
      (> (battery robot2) 20)
      (>= (distanceRun robot2 roomB roomC)(distance roomB roomC))
    )
    :effect (and
      (atRobot robot2 roomC)
      (not (ismoving robot2 roomB roomC))
      (not (inMovement robot2))
    )
)
(:event endMoving_robot2_roomC_roomA
    :parameters ()
    :precondition (and
      (link roomC roomA)
      (ismoving robot2 roomC roomA)
      (inMovement robot2)
      (> (battery robot2) 20)
      (>= (distanceRun robot2 roomC roomA)(distance roomC roomA))
    )
    :effect (and
      (atRobot robot2 roomA)
      (not (ismoving robot2 roomC roomA))
      (not (inMovement robot2))
    )
)
(:event endMoving_robot2_roomC_roomB
    :parameters ()
    :precondition (and
      (link roomC roomB)
      (ismoving robot2 roomC roomB)
      (inMovement robot2)
      (> (battery robot2) 20)
      (>= (distanceRun robot2 roomC roomB)(distance roomC roomB))
    )
    :effect (and
      (atRobot robot2 roomB)
      (not (ismoving robot2 roomC roomB))
      (not (inMovement robot2))
    )
)
(:event endMoving_robot2_roomC_roomC
    :parameters ()
    :precondition (and
      (link roomC roomC)
      (ismoving robot2 roomC roomC)
      (inMovement robot2)
      (> (battery robot2) 20)
      (>= (distanceRun robot2 roomC roomC)(distance roomC roomC))
    )
    :effect (and
      (atRobot robot2 roomC)
      (not (ismoving robot2 roomC roomC))
      (not (inMovement robot2))
    )
)
(:process moving_robot1_roomA_roomA
    :parameters ()
    :precondition (and
      (link roomA roomA)
      (ismoving robot1 roomA roomA)
      (inMovement robot1)
      (< (distanceRun robot1 roomA roomA)(distance roomA roomA))
      (> (battery robot1) 20)
    )
    :effect (and
      (increase (distanceRun robot1 roomA roomA)(* (speed robot1) #t))
    )
)
(:process moving_robot1_roomA_roomB
    :parameters ()
    :precondition (and
      (link roomA roomB)
      (ismoving robot1 roomA roomB)
      (inMovement robot1)
      (< (distanceRun robot1 roomA roomB)(distance roomA roomB))
      (> (battery robot1) 20)
    )
    :effect (and
      (increase (distanceRun robot1 roomA roomB)(* (speed robot1) #t))
    )
)
(:process moving_robot1_roomA_roomC
    :parameters ()
    :precondition (and
      (link roomA roomC)
      (ismoving robot1 roomA roomC)
      (inMovement robot1)
      (< (distanceRun robot1 roomA roomC)(distance roomA roomC))
      (> (battery robot1) 20)
    )
    :effect (and
      (increase (distanceRun robot1 roomA roomC)(* (speed robot1) #t))
    )
)
(:process moving_robot1_roomB_roomA
    :parameters ()
    :precondition (and
      (link roomB roomA)
      (ismoving robot1 roomB roomA)
      (inMovement robot1)
      (< (distanceRun robot1 roomB roomA)(distance roomB roomA))
      (> (battery robot1) 20)
    )
    :effect (and
      (increase (distanceRun robot1 roomB roomA)(* (speed robot1) #t))
    )
)
(:process moving_robot1_roomB_roomB
    :parameters ()
    :precondition (and
      (link roomB roomB)
      (ismoving robot1 roomB roomB)
      (inMovement robot1)
      (< (distanceRun robot1 roomB roomB)(distance roomB roomB))
      (> (battery robot1) 20)
    )
    :effect (and
      (increase (distanceRun robot1 roomB roomB)(* (speed robot1) #t))
    )
)
(:process moving_robot1_roomB_roomC
    :parameters ()
    :precondition (and
      (link roomB roomC)
      (ismoving robot1 roomB roomC)
      (inMovement robot1)
      (< (distanceRun robot1 roomB roomC)(distance roomB roomC))
      (> (battery robot1) 20)
    )
    :effect (and
      (increase (distanceRun robot1 roomB roomC)(* (speed robot1) #t))
    )
)
(:process moving_robot1_roomC_roomA
    :parameters ()
    :precondition (and
      (link roomC roomA)
      (ismoving robot1 roomC roomA)
      (inMovement robot1)
      (< (distanceRun robot1 roomC roomA)(distance roomC roomA))
      (> (battery robot1) 20)
    )
    :effect (and
      (increase (distanceRun robot1 roomC roomA)(* (speed robot1) #t))
    )
)
(:process moving_robot1_roomC_roomB
    :parameters ()
    :precondition (and
      (link roomC roomB)
      (ismoving robot1 roomC roomB)
      (inMovement robot1)
      (< (distanceRun robot1 roomC roomB)(distance roomC roomB))
      (> (battery robot1) 20)
    )
    :effect (and
      (increase (distanceRun robot1 roomC roomB)(* (speed robot1) #t))
    )
)
(:process moving_robot1_roomC_roomC
    :parameters ()
    :precondition (and
      (link roomC roomC)
      (ismoving robot1 roomC roomC)
      (inMovement robot1)
      (< (distanceRun robot1 roomC roomC)(distance roomC roomC))
      (> (battery robot1) 20)
    )
    :effect (and
      (increase (distanceRun robot1 roomC roomC)(* (speed robot1) #t))
    )
)
(:process moving_robot2_roomA_roomA
    :parameters ()
    :precondition (and
      (link roomA roomA)
      (ismoving robot2 roomA roomA)
      (inMovement robot2)
      (< (distanceRun robot2 roomA roomA)(distance roomA roomA))
      (> (battery robot2) 20)
    )
    :effect (and
      (increase (distanceRun robot2 roomA roomA)(* (speed robot2) #t))
    )
)
(:process moving_robot2_roomA_roomB
    :parameters ()
    :precondition (and
      (link roomA roomB)
      (ismoving robot2 roomA roomB)
      (inMovement robot2)
      (< (distanceRun robot2 roomA roomB)(distance roomA roomB))
      (> (battery robot2) 20)
    )
    :effect (and
      (increase (distanceRun robot2 roomA roomB)(* (speed robot2) #t))
    )
)
(:process moving_robot2_roomA_roomC
    :parameters ()
    :precondition (and
      (link roomA roomC)
      (ismoving robot2 roomA roomC)
      (inMovement robot2)
      (< (distanceRun robot2 roomA roomC)(distance roomA roomC))
      (> (battery robot2) 20)
    )
    :effect (and
      (increase (distanceRun robot2 roomA roomC)(* (speed robot2) #t))
    )
)
(:process moving_robot2_roomB_roomA
    :parameters ()
    :precondition (and
      (link roomB roomA)
      (ismoving robot2 roomB roomA)
      (inMovement robot2)
      (< (distanceRun robot2 roomB roomA)(distance roomB roomA))
      (> (battery robot2) 20)
    )
    :effect (and
      (increase (distanceRun robot2 roomB roomA)(* (speed robot2) #t))
    )
)
(:process moving_robot2_roomB_roomB
    :parameters ()
    :precondition (and
      (link roomB roomB)
      (ismoving robot2 roomB roomB)
      (inMovement robot2)
      (< (distanceRun robot2 roomB roomB)(distance roomB roomB))
      (> (battery robot2) 20)
    )
    :effect (and
      (increase (distanceRun robot2 roomB roomB)(* (speed robot2) #t))
    )
)
(:process moving_robot2_roomB_roomC
    :parameters ()
    :precondition (and
      (link roomB roomC)
      (ismoving robot2 roomB roomC)
      (inMovement robot2)
      (< (distanceRun robot2 roomB roomC)(distance roomB roomC))
      (> (battery robot2) 20)
    )
    :effect (and
      (increase (distanceRun robot2 roomB roomC)(* (speed robot2) #t))
    )
)
(:process moving_robot2_roomC_roomA
    :parameters ()
    :precondition (and
      (link roomC roomA)
      (ismoving robot2 roomC roomA)
      (inMovement robot2)
      (< (distanceRun robot2 roomC roomA)(distance roomC roomA))
      (> (battery robot2) 20)
    )
    :effect (and
      (increase (distanceRun robot2 roomC roomA)(* (speed robot2) #t))
    )
)
(:process moving_robot2_roomC_roomB
    :parameters ()
    :precondition (and
      (link roomC roomB)
      (ismoving robot2 roomC roomB)
      (inMovement robot2)
      (< (distanceRun robot2 roomC roomB)(distance roomC roomB))
      (> (battery robot2) 20)
    )
    :effect (and
      (increase (distanceRun robot2 roomC roomB)(* (speed robot2) #t))
    )
)
(:process moving_robot2_roomC_roomC
    :parameters ()
    :precondition (and
      (link roomC roomC)
      (ismoving robot2 roomC roomC)
      (inMovement robot2)
      (< (distanceRun robot2 roomC roomC)(distance roomC roomC))
      (> (battery robot2) 20)
    )
    :effect (and
      (increase (distanceRun robot2 roomC roomC)(* (speed robot2) #t))
    )
)
(:process charging_robot1
    :parameters ()
    :precondition (and
      (ischarging robot1)
      (< (battery robot1) 100)
    )
    :effect (and
      (increase (battery robot1)(*  #t 1))
    )
)
(:process charging_robot2
    :parameters ()
    :precondition (and
      (ischarging robot2)
      (< (battery robot2) 100)
    )
    :effect (and
      (increase (battery robot2)(*  #t 1))
    )
)
(:process discharging_robot1
    :parameters ()
    :precondition (and
      (handsFull robot1)
      (not (ischarging robot1))
      (>= (battery robot1) 0)
    )
    :effect (and
      (decrease (battery robot1)(*  #t(* (speed robot1)(dischargeRate robot1))))
    )
)
(:process discharging_robot2
    :parameters ()
    :precondition (and
      (handsFull robot2)
      (not (ischarging robot2))
      (>= (battery robot2) 0)
    )
    :effect (and
      (decrease (battery robot2)(*  #t(* (speed robot2)(dischargeRate robot2))))
    )
)
