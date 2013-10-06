equalTo: anObject withMapping: aDictionary 
	self class = anObject class ifFalse: [^false].
	self isForByteArray = anObject isForByteArray ifFalse: [^false].
	self contents size = anObject contents size ifFalse: [^false].
	1 to: self contents size
		do: 
			[:i | 
			((self contents at: i) equalTo: (anObject contents at: i)
				withMapping: aDictionary) ifFalse: [^false]].
	^true