comparing
= other

	self species = other species ifFalse: [ ^ false ].
	^ self package = other package and: [ self tag = other tag ]