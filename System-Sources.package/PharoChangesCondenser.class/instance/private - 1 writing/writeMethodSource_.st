writeMethodSource: aMethod
	
	self nextCommentChunkDo: [ :strm |
		strm 
			nextPutAll: aMethod methodClass name;
			nextPutAll: ' methodsFor: ';
			store: aMethod category asString;
			nextPutAll: ' stamp: ';
			store: (self stampOfMethod: aMethod) ].
	
	self
		writeRemoteString: (self sourceCodeOfMethod: aMethod)
		for: aMethod.
		
	stream nextPutAll: ' !'; cr.