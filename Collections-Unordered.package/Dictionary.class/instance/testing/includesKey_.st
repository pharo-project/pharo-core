includesKey: key 
	"Answer whether the receiver has a key equal to the argument, key."
	
	self at: key ifAbsent: [^false].
	^true