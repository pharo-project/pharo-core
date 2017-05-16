fromHexString: aString
	^ self fromByteArray: (ByteArray readHexFrom: aString)