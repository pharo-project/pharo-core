classIcon
	^ icons
			at: #'classIcon'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self classIconContents readStream) ].