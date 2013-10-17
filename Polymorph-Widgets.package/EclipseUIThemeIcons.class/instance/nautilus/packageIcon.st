packageIcon
	^ icons
			at: #'packageIcon'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self packageIconContents readStream) ].