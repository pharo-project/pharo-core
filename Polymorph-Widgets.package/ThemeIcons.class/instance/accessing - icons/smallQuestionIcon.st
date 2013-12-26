smallQuestionIcon
	"Private - Generated method"
	^icons
			at: #smallQuestionIcon
			ifAbsentPut: [ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self smallQuestionIconContents readStream) ].