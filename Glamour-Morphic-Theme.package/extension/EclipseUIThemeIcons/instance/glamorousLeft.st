glamorousLeft
	^ self icons
			at: #'glamorousLeft'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self glamorousLeftIconContents readStream) ].