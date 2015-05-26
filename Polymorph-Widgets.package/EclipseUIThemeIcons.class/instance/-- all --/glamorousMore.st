glamorousMore
	^ self icons
			at: #'glamorousMore'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self glamorousMoreIconContents readStream) ].