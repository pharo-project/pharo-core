glamorousOver
	^ self icons
			at: #'glamorousOver'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self glamorousOverIconContents readStream) ].