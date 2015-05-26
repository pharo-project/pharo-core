glamorousOpenFromUrl
	^ self icons
			at: #'glamorousOpenFromUrl'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self glamorousOpenFromUrlIconContents readStream) ].