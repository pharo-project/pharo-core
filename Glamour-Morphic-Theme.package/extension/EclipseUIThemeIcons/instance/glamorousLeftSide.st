glamorousLeftSide
	^ self icons
			at: #'glamorousLeftSide'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self glamorousLeftSideIconContents readStream) ].