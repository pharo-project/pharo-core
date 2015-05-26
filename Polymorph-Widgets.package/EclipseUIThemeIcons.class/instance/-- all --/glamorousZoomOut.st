glamorousZoomOut
	^ self icons
			at: #'glamorousZoomOut'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self glamorousZoomOutIconContents readStream) ].