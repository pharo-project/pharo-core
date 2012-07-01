accessing
endsWithDigit
	"Answer whether the receiver's final character represents a digit.  3/11/96 sw"

	^ self size > 0 and: [self last isDigit]