traits
addTraitSelector: aSymbol withMethod: aCompiledMethod
	"Add aMethod with selector aSymbol to my
	methodDict. aMethod must not be defined locally."

	| source methodAndNode |
	[(self includesLocalSelector: aSymbol) not] assert.
	self ensureLocalSelectors.
		
	source := aCompiledMethod getSourceReplacingSelectorWith: aSymbol.
	methodAndNode  := self
		compile: source
		classified: aCompiledMethod category
		notifying: nil
		trailer: self defaultMethodTrailer
		ifFail: [^nil].
	methodAndNode method putSource: source fromParseNode: methodAndNode node inFile: 2
		withPreamble: [:f | f cr; nextPut: $!; nextChunkPut: 'Trait method'; cr].
			
	self basicAddSelector: aSymbol withMethod: methodAndNode method