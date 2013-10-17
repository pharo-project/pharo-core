pushClosureCopyCopiedValues: copiedValues args: args jumpTo: labelSymbol

	stream nextPutAll: 'pushClosureCopyCopiedValues: '.
	stream nextPutAll: copiedValues printString .
	stream nextPutAll: ' args: '.
	stream nextPutAll: args printString .