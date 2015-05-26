glamorousAdd
	^ self icons
			at: #'glamorousAdd'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self glamorousAddIconContents readStream) ].