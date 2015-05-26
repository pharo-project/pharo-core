glamorousRemove
	^ self icons
			at: #'glamorousRemove'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self glamorousRemoveIconContents readStream) ].