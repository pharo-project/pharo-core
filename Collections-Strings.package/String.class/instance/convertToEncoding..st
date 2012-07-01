converting
convertToEncoding: encodingName
	^self convertToWithConverter: (TextConverter newForEncoding: encodingName).