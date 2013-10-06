equalTo: anObject withMapping: aDictionary 
	self class = anObject class ifFalse: [^false].
	((self receiver equalTo: anObject receiver withMapping: aDictionary)
		and: [self selector = anObject selector]) ifFalse: [^false].
	1 to: self arguments size
		do: 
			[:i | 
			((self arguments at: i) equalTo: (anObject arguments at: i)
				withMapping: aDictionary) ifFalse: [^false]].
	^true