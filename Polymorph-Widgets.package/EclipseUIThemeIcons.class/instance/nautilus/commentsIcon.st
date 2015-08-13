commentsIcon
	"Private - Generated method"
	^icons 
			at: #commentsIcon
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self commentsIconContents readStream) ].