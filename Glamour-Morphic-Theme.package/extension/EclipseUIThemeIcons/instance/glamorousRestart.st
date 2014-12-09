glamorousRestart
	^ self icons
			at: #'glamorousRestart'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self glamorousRestartIconContents readStream) ].