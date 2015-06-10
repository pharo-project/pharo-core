catalogIcon
	^ icons
			at: #'catalogIcon'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self catalogIconContents readStream)   ].