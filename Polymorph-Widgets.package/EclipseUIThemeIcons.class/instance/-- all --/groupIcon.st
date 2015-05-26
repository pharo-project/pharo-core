groupIcon
	^ icons
			at: #'groupIcon'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self groupIconContents readStream) ].