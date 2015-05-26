glamorousDown
	^ self icons
			at: #'glamorousDown'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self glamorousDownIconContents readStream) ].