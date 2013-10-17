sizePushLiteralVar: literalIndex
	^self sizeOpcodeSelector: #genPushLiteralVar: withArguments: {literalIndex}