comparing
equalTo: anObject withMapping: aDictionary 
	self class = anObject class ifFalse: [^false].
	self messages size = anObject messages size ifFalse: [^false].
	1 to: self messages size
		do: 
			[:i | 
			((self messages at: i) equalTo: (anObject messages at: i)
				withMapping: aDictionary) ifFalse: [^false]].
	^true