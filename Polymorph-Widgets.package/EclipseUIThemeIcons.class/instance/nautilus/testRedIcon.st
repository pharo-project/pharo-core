testRedIcon 
	^ icons
			at: #'testRedIcon'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self testRedIconContents readStream) ].