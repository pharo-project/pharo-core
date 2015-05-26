glamorousEdit
	^ self icons
			at: #'glamorousEdit'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self glamorousEditIconContents readStream) ].