converting
convertFromEncoding: encodingName
	^self convertFromWithConverter: (TextConverter newForEncoding: encodingName)