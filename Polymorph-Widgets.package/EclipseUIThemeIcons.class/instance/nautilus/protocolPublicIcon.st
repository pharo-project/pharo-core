protocolPublicIcon
	^ icons
			at: #'protocolPublicIcon'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self protocolPublicIconContents readStream) ].