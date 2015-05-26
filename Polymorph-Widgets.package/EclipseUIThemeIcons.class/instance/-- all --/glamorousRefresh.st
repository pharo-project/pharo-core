glamorousRefresh
	^ self icons
			at: #'glamorousRefresh'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self glamorousRefreshIconContents readStream) ].