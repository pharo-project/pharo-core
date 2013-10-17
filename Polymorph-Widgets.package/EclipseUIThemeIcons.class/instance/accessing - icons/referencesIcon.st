referencesIcon
	^ icons
			at: #'referencesIcon'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self referencesIconContents readStream) ].