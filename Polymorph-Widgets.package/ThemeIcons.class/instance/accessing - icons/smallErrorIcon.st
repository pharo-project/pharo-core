smallErrorIcon
	"Private - Generated method"
	^icons
			at: #smallErrorIcon
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self smallErrorIconContents readStream) ].