iconBase64: aString
	form := (Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: aString readStream))