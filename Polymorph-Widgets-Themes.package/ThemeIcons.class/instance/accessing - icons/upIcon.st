upIcon 
	^ icons
			at: #'upIcon'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self upIconContents readStream) ].