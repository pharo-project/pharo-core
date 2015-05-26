testYellowIcon 
	^ icons
			at: #'testYellowIcon'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self testYellowIconContents readStream) ].