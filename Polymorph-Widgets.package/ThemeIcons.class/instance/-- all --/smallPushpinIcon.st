smallPushpinIcon
	"Private - Generated method"
	^icons
			at: #smallPushpinIcon
			ifAbsentPut: [ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self smallPushpinIconContents readStream) ].