pushRemoteTemp: tempIndex inVectorAt: tempVectorIndex
	stack push.
	
	(tempIndex >= 0 and: [tempIndex < 256
	 and: [tempVectorIndex >= 0 and: [tempVectorIndex < 256]]]) ifTrue:
		["140 	10001100 kkkkkkkk jjjjjjjj 	Push Temp At kkkkkkkk In Temp Vector At: jjjjjjjj"
		 self
			nextPut: ( Bytecodes at: #doubleExtendedPushRemoteTempInVectorAt);
			nextPut: tempIndex - 1;
			nextPut: tempVectorIndex - 1.
		 ^self].
	tempIndex >= 256 ifTrue:
		[^self encodingError: 'remoteTempIndex is out of range 0 to 255'].
	tempVectorIndex >= 256 ifTrue:
		[^self encodingError: 'tempVectorIndex is out of range 0 to 255']