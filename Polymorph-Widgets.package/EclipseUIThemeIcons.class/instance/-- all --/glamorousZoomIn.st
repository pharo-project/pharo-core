glamorousZoomIn
	^ self icons
			at: #'glamorousZoomIn'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self glamorousZoomInIconContents readStream) ].