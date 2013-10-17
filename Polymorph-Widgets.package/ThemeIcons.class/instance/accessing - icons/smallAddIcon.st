smallAddIcon
	"Private - Generated method"
	^ icons
			at: #'smallAdd'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self smallAddIconContents readStream) ].