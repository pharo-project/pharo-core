compile: code classified: category notifying: requestor trailer: bytes ifFail: aBlock
	self deprecated: 'please use the compiler API directly' on:  '5 September 2013'  in: 'Pharo 3'.

	^ self compiler
		source: code;
		requestor: requestor;
		category: category;
		failBlock: aBlock;
		compiledMethodTrailer: bytes;
		compile.
		