smallWarningIcon
	"Private - Generated method"
	^icons
			at: #smallWarningIcon
			ifAbsentPut: [ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self smallWarningIconContents readStream) ].