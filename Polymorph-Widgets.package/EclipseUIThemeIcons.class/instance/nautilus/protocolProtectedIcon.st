protocolProtectedIcon
	^ icons
			at: #'protocolProtectedIcon'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self protocolProtectedIconContents readStream) ].