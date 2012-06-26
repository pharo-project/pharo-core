private - icons
warningIcon
	"Private - Generated method"
	^icons
			at: #warningIcon
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self warningIconContents readStream) ].