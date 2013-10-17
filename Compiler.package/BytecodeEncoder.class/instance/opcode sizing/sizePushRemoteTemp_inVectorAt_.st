sizePushRemoteTemp: tempIndex inVectorAt: tempVectorIndex
	^self sizeOpcodeSelector: #genPushRemoteTemp:inVectorAt: withArguments: {tempIndex. tempVectorIndex}