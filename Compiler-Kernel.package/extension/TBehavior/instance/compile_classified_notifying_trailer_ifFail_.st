compile: code classified: category notifying: requestor trailer: bytes ifFail: aBlock
	"Compile code without logging the source in the changes file"
	
	^ self compiler
		source: code;
		requestor: requestor;
		category: category;
		failBlock: aBlock;
		compiledMethodTrailer: bytes;
		compile.
		