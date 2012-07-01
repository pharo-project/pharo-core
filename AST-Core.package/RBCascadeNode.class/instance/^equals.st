comparing
= anObject 
	self == anObject ifTrue: [^true].
	self class = anObject class ifFalse: [^false].
	self messages size = anObject messages size ifFalse: [^false].
	1 to: self messages size
		do: [:i | (self messages at: i) = (anObject messages at: i) ifFalse: [^false]].
	^true