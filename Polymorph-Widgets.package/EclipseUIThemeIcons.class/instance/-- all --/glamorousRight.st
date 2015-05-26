glamorousRight
	^ self icons
			at: #'glamorousRight'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self glamorousRightIconContents readStream) ].