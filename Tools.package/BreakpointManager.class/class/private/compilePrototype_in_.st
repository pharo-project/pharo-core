compilePrototype: aSymbol in: aClass 
	"Compile and return a new method containing a break statement"

	| source method |
	source := self breakpointMethodSourceFor: aSymbol in: aClass.
	method := aClass compiler
		source: source;
		class: aClass;
		failBlock: [self error: '[breakpoint] unable to install breakpoint'];
		compiledMethodTrailer: (aClass>>aSymbol) trailer;
		compile.
	^method