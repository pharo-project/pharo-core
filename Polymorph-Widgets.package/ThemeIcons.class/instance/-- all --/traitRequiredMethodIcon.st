traitRequiredMethodIcon
	^ icons
			at: #'traitRequiredMethodIcon'
			ifAbsentPut: [ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self traitRequiredMethodIconContents readStream) ].