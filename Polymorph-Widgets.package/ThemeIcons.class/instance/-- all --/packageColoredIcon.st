packageColoredIcon
	^ icons
		at: #packageColoredIcon
		ifAbsentPut: [ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self packageColoredIconContents readStream) ]