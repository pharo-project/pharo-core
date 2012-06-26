instance creation
newFromStream: s
	"Only meant for my subclasses that are raw bits and word-like.  For quick unpack form the disk."
	self isPointers | self isWords not ifTrue: [^ super newFromStream: s].
		"super may cause an error, but will not be called."
	^ s nextWordsInto: (self new: 6)