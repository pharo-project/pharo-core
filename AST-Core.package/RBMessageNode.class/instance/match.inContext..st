matching
match: aNode inContext: aDictionary 
	aNode class = self class ifFalse: [^false].
	self selector = aNode selector ifFalse: [^false].
	(receiver match: aNode receiver inContext: aDictionary) ifFalse: [^false].
	1 to: arguments size
		do: 
			[:i | 
			((arguments at: i) match: (aNode arguments at: i) inContext: aDictionary)
				ifFalse: [^false]].
	^true