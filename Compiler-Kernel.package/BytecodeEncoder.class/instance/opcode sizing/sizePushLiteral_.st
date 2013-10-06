sizePushLiteral: literalIndex
	^self sizeOpcodeSelector: #genPushLiteral: withArguments: {literalIndex}