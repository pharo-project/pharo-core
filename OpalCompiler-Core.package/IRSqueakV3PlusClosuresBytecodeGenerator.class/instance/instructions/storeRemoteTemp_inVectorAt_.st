storeRemoteTemp: tempIndex inVectorAt: tempVectorIndex
	"141 	10001101 kkkkkkkk jjjjjjjj 	Store Temp At kkkkkkkk In Temp Vector At: jjjjjjjj"
	(tempIndex >= 0 and: [tempIndex < 256
	 and: [tempVectorIndex >= 0 and: [tempVectorIndex < 256]]]) ifTrue:
		[self
			nextPut: (Bytecodes at: #storeRemoteTempInVectorAt);
			nextPut: tempIndex - 1;
			nextPut: tempVectorIndex - 1.
		 ^self].
	tempIndex >= 256 ifTrue:
		[^self encodingError: 'remoteTempIndex out of range 0 to 255'].
	tempVectorIndex >= 256 ifTrue:
		[^self encodingError: 'tempVectorIndex out of range 0 to 255']