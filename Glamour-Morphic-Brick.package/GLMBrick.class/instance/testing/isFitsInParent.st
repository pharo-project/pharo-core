isFitsInParent

	^ self brickOwner
		"if our owner is a trick"
		ifNotNil: [ self brickOwner globalBounds containsRect: self globalBounds ]
		"if our owner is a morph"
		ifNil: [ self owner ifNotNil: [ self owner bounds containsRect: self globalBounds ] ifNil: [ ^ true ] ]