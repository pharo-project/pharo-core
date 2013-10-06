smallUnderlineIcon
	"Private - Generated method"
	^icons
			at: #smallUnderlineIcon
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self smallUnderlineIconContents readStream) ].