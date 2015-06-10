configIcon 
	^ icons
			at: #'configIcon'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self configIconContents readStream)   ].