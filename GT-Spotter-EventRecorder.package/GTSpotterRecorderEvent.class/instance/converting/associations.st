associations
	^ info 
			ifNil: [ #() ]
			ifNotNil: [ info associations ]