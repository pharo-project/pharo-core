smallStrikeOutIcon
	"Private - Generated method"
	^icons
			at: #smallStrikeOutIcon
			ifAbsentPut: [ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self smallStrikeOutIconContents readStream) ].