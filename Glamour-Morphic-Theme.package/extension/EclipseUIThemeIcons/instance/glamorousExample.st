glamorousExample
	^ self icons
			at: #'glamorousExample'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self glamorousExampleIconContents readStream) ].