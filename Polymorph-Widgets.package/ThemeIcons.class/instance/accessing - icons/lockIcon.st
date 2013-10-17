lockIcon
	"Private - Generated method"
	^icons
			at: #lockIcon
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self lockIconContents readStream) ].