addTraitSelector: aSymbol withMethod: aCompiledMethod
	"Add aMethod with selector aSymbol to my
	methodDict. aMethod must not be defined locally."

	| source method |
	[(self includesLocalSelector: aSymbol) not] assert.
	self ensureLocalSelectors.
		
	source := aCompiledMethod getSourceReplacingSelectorWith: aSymbol.
	method  := self compiler
		source: source;
		category: aCompiledMethod category;
		failBlock:  [ ^nil ];
		compile.
		
	method putSource: source inFile: 2
		withPreamble: [:f | f cr; nextPut: $!; nextChunkPut: 'Trait method'; cr].
	
	self isTrait ifFalse: [ method properties at: #traitSource put: aCompiledMethod].
	
	self basicAddSelector: aSymbol withMethod: method