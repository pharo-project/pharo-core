private - icons
forwardIcon
	"Private - Generated method"
	^ icons
			at: #'forward'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self forwardIconContents readStream) ].