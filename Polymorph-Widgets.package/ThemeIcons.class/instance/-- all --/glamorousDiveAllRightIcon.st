glamorousDiveAllRightIcon
	"Private - Generated method"
	^icons 
			at: #glamorousDiveAllRightIcon
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self glamorousDiveAllRightIconContents readStream) ].