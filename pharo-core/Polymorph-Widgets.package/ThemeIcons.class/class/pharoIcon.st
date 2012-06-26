private - icons
pharoIcon
	"Private - Generated method"
	^icons
			at: #pharoIcon
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self pharoIconContents readStream) ].