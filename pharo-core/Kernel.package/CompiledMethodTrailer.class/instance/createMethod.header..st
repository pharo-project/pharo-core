creating a method
createMethod: numberOfBytesForAllButTrailer header: headerWord 
	| meth |
	encodedData ifNil: [ self encode ].
	
	meth := CompiledMethod newMethod: numberOfBytesForAllButTrailer + size header: headerWord.
	
	"copy the encoded trailer data"
	
	1 to: size do:
		[:i | meth at: meth size - size + i put: (encodedData at: i)].

	^ meth