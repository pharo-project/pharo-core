point functions
bearingToPoint: anotherPoint
    "Return the bearing, in degrees, from the receiver to anotherPoint.
     Adapted from Playground, where the ultimate provenance of the algorithm was a wild earlier method of Jay Fenton's which I never checked carefully, but the thing has always seemed to work"

    | deltaX deltaY  |
    deltaX := anotherPoint x -  x.
    deltaY := anotherPoint y - y.

    deltaX abs < 0.001
        ifTrue:
            [^ deltaY > 0 ifTrue: [180] ifFalse: [0]].

    ^ ((deltaX >= 0 ifTrue: [90] ifFalse: [270])
            - ((deltaY / deltaX) arcTan negated radiansToDegrees)) rounded
