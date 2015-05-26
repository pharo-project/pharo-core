downIcon 
	^ icons
			at: #'downIcon'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self downIconContents readStream) ].