isLastInOwner

	^ self brickDoubleLink
		ifNotNilDo: [ :bdl | bdl hasSuccessor not ]
		ifNil: [ false ]