glamorousUp
	^ self icons
			at: #'glamorousUp'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self glamorousUpIconContents readStream) ].