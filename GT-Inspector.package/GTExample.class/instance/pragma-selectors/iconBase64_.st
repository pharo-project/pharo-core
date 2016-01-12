iconBase64: aString
	self initializeIconWith: [ 
		form := (Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: aString readStream)) ]