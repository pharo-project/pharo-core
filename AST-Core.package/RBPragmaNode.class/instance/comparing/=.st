= anObject 
	self == anObject ifTrue: [^true].
	self class = anObject class ifFalse: [^false].
	self selector = anObject selector ifFalse: [^false].
	1 to: self arguments size
		do: [:i | (self arguments at: i) = (anObject arguments at: i) ifFalse: [^false]].
	^true