compiling
compile: code notifying: requestor 
	"Compile the argument, code, as source code in the context of the 
	receiver and insEtall the result in the receiver's method dictionary. The 
	second argument, requestor, is to be notified if an error occurs. The 
	argument code is either a string or an object that converts to a string or 
	a PositionableStream. This method also saves the source code."
	
	| methodAndNode |
	methodAndNode  := self
		compile: code "a Text"
		classified: nil
		notifying: requestor
		trailer: self defaultMethodTrailer
		ifFail: [^nil].
	methodAndNode method putSource: code fromParseNode: methodAndNode node inFile: 2
			withPreamble: [:f | f cr; nextPut: $!; nextChunkPut: 'Behavior method'; cr].
	self addSelector: methodAndNode selector withMethod: methodAndNode method notifying: requestor.
	^ methodAndNode selector