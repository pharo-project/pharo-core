*famfam-icons-accessing
userIcon
	"Private - Generated method"
	^icons 
		at: #userIcon
		ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self userIconContents readStream) ].