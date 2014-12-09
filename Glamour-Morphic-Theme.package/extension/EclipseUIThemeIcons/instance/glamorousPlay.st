glamorousPlay
	^ self icons
			at: #'glamorousPlay'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self glamorousPlayIconContents readStream) ].