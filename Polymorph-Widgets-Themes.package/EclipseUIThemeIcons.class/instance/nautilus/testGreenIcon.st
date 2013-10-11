testGreenIcon 
	^ icons
			at: #'testGreenIcon'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self testGreenIconContents readStream) ].