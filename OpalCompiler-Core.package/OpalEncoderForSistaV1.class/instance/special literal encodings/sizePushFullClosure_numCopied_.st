sizePushFullClosure: compiledBlockLiteralIndex numCopied: numCopied
	^self sizeOpcodeSelector: #genPushFullClosure:numCopied: withArguments: {compiledBlockLiteralIndex.numCopied}