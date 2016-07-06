isFirstInOwner

	^ self brickDoubleLink 
		ifNotNil: [ :bdl | bdl hasPredecessor not ]
		ifNil: [ false ]