areFingersLinesNotTooFarApart
	| firstFinger secondFinger minDistance |
	firstFinger :=  activeFingers first.
	secondFinger := activeFingers last.
	minDistance :=  (firstFinger distanceFromLineFormedByFinger: secondFinger) min: (secondFinger distanceFromLineFormedByFinger: firstFinger).
	^ minDistance < maxDistanceBetweenFingersLine