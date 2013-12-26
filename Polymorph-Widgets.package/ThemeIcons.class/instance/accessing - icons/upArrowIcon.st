upArrowIcon
	"Private - Generated method"
	^icons
			at: #upArrowIcon
			ifAbsentPut: [ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self upArrowIconContents readStream) ].