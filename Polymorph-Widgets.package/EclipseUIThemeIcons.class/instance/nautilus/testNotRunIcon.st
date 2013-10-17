testNotRunIcon 
	^ icons
			at: #'testNotRunIcon'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self testNotRunIconContents readStream) ].