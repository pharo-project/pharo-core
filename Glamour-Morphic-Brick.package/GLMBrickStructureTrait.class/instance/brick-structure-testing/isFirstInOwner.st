isFirstInOwner

	^ self brickDoubleLink 
		ifNotNilDo: [ :bdl | bdl hasPredecessor not ]
		ifNil: [ false ]