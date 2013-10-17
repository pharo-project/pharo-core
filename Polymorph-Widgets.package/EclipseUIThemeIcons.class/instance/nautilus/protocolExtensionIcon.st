protocolExtensionIcon
	^ icons
			at: #'protocolExtensionIcon'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self protocolExtensionIconContents readStream) ].