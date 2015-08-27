smallProfileIcon 
	^ icons
			at: #smallProfileIcon
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self smallProfileIconContents readStream) ].