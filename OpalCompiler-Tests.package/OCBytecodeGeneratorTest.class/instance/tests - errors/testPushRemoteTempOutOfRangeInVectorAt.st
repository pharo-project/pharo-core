testPushRemoteTempOutOfRangeInVectorAt
	
	self should: [ self newBytecodeGen
					numArgs: 0;
					pushRemoteTemp: 257 inVectorAt: 1 ] 
		raise: Error 
		withExceptionDo: [:exception | self assert: (exception messageText = 'remoteTempIndex is out of range 0 to 255')]
	