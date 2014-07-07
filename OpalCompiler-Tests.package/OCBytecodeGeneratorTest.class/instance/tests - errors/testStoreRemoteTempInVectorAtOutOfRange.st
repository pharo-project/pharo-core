testStoreRemoteTempInVectorAtOutOfRange
	
	self should: [ IRSqueakV3PlusClosuresBytecodeGenerator new
					numArgs: 0;
					storeRemoteTemp: 1 inVectorAt: 257 ] 
		raise: Error 
		withExceptionDo: [:exception | self assert: (exception messageText = 'tempVectorIndex out of range 0 to 255')]
	