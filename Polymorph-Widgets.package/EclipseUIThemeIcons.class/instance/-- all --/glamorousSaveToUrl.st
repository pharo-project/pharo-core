glamorousSaveToUrl
	^ self icons
			at: #'glamorousSaveToUrl'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self glamorousSaveToUrlIconContents readStream) ].