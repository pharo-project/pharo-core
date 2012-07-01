streaming
nextPutAll: value
	
	accessSemaphore
		critical: [stream nextPutAll: value].
	^value