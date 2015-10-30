byteTextConverters
	^ ByteTextConverters ifNil: [ self initializeByteTextConverters ]