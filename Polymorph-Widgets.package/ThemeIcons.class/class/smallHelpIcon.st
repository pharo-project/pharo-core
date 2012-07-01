private - icons
smallHelpIcon
	"Private - Generated method"
	^ icons
			at: #'smallHelp'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self smallHelpIconContents readStream) ].