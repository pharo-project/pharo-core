refreshIcon 
	^ icons
			at: #'refreshIcon'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self refreshIconContents readStream) ].