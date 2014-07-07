pushNewArray: size
	stack push.
	stack pop: size.
	(size < 0 or: [size > 127]) ifTrue: [self encodingError: 'The array size is out of range. Should be 0 - 127'].
	self 
		nextPut: (Bytecodes at: #extendedPushOrPopIntoArray);
		nextPut: size.
	

