backIcon
	"Private - Generated method"
	^ icons
			at: #'back'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self backIconContents readStream) ].