glamorousClose
	^ self icons
			at: #'glamorousClose'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self glamorousCloseIconContents readStream) ].