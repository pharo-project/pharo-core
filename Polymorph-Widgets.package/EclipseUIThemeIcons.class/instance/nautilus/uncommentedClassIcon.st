uncommentedClassIcon
	^ icons
			at: #'uncommentedClassIcon'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self uncommentedClassIconContents readStream) ].