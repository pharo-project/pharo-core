stopIcon 
	^ icons
			at: #'stopIcon'
			ifAbsentPut: [ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self stopIconContents readStream) ].