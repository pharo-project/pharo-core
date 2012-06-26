class variables
classVarNamed: name
	"Answer the content of the Class Variable"

	^self classPool at: name asSymbol ifAbsent: [self error: 'no such lass var']