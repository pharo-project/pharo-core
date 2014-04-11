condenseClassOrTrait: classOrTrait
	self writeClassComment: classOrTrait.
	
	classOrTrait methodsDo: [ :method |
		(self shouldCondenseMethod: method)
			ifTrue: [ 	self writeMethodSource: method ]].
	
	classOrTrait class methodsDo: [ :method |
		(self shouldCondenseMethod: method)
			ifTrue: [ self writeMethodSource: method ]]