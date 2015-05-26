glamorousTable
	^ self icons
			at: #'glamorousTable'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self glamorousTableIconContents readStream) ].