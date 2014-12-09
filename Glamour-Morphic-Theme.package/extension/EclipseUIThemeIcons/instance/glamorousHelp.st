glamorousHelp
	^ self icons
			at: #'glamorousHelp'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self glamorousHelpIconContents readStream) ].