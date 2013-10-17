= anObject 
	self == anObject ifTrue: [ ^ true ].
	self class = anObject class ifFalse: [ ^ false ].
	self statements size = anObject statements size ifFalse: [ ^ false ].
	1 to: self statements size do: [ :i | 
		(self statements at: i) = (anObject statements at: i) 
			ifFalse: [ ^ false ] ].
	^ true