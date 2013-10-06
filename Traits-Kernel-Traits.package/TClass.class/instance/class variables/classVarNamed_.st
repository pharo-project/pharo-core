classVarNamed: aString
	"Answer the content of the Class Variable"

	^self classPool at: aString asSymbol ifAbsent: [self error: 'no such lass var']