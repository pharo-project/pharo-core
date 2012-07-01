match
completeMatch: aKeymapEntry buffer: aBuffer
	KMLog log: 'Complete match: ', aKeymapEntry printString.
	self clearBuffer.
	currentEvent wasHandled: true.