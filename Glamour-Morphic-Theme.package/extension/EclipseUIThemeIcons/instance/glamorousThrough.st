glamorousThrough
	^ self icons
			at: #'glamorousThrough'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self glamorousThroughIconContents readStream) ].