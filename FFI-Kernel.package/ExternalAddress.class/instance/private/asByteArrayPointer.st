asByteArrayPointer
	"Return a ByteArray describing a pointer to the contents of the receiver."
	^(ByteArray new: 4)
		byteAt: 1 put: (self basicAt: 1);
		byteAt: 2 put: (self basicAt: 2);
		byteAt: 3 put: (self basicAt: 3);
		byteAt: 4 put: (self basicAt: 4);
	yourself