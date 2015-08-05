formForSelector: aSymbol
	^ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: (self perform: aSymbol) readStream)