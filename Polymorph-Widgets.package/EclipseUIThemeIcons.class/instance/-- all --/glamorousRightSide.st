glamorousRightSide
	^ self icons
			at: #'glamorousRightSide'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self glamorousRightSideIconContents readStream) ].