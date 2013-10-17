protocolPrivateIcon
	^ icons
			at: #'protocolPrivateIcon'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self protocolPrivateIconContents readStream) ].