asBrick
	
	^ self owner
		ifNil: [ GLMMorphBrick on: self ]
		ifNotNil: [ self owner isBrick
			ifTrue: [ self owner ]
			ifFalse: [ GLMMorphBrick on: self ] ]