testing
isObsolete
	"Return true if the receiver is obsolete."
	^(self environment at: name ifAbsent: [nil]) ~~ self