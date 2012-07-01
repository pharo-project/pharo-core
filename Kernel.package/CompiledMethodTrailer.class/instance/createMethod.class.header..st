creating a method
createMethod: numberOfBytesForAllButTrailer class: aCompiledMethodClass header: headerWord 
	| meth |
	encodedData ifNil: [self encode].
	
	meth := aCompiledMethodClass newMethod: numberOfBytesForAllButTrailer + size header: headerWord.
	"copy the encoded trailer data"
	1 to: size do:
		[:i | meth at: meth size - size + i put: (encodedData at: i)].

	^meth