glamorousInto
	^ self icons
			at: #'glamorousInto'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self glamorousIntoIconContents readStream) ].