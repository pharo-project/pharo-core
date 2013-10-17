fromBytes: aByteArray index: anInteger
	"share alike instances"
	
	self allInstancesDo: [:inst |
		(inst fileContentsExternalMemoryBytes = aByteArray and: [inst index = anInteger])
			ifTrue: [^inst "validate"]].
	^(self basicNew)
		fileContentsExternalMemory: (FreeTypeExternalMemory bytes: aByteArray);
		index: anInteger;
		yourself