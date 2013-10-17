traitIcon
	^ icons
			at: #'traitIcon'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self traitIconContents readStream) ].