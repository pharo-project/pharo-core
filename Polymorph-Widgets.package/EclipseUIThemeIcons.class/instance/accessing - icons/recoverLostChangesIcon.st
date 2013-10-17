recoverLostChangesIcon
	^ icons
			at: #'recoverLostChangesIcon'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self recoverLostChangesIconContents readStream) ].