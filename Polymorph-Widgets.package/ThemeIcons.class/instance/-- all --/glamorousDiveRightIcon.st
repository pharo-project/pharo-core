glamorousDiveRightIcon
	"Private - Generated method"
	^icons 
			at: #glamorousDiveRightIcon
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self glamorousDiveRightIconContents readStream) ].