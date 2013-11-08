initialExtent

	^ initialExtent value
		ifNil: [ self model 
				ifNil: [ self defaultInitialExtent ]
				ifNotNil: [:m | m initialExtent
								ifNil: [ self defaultInitialExtent ]]]