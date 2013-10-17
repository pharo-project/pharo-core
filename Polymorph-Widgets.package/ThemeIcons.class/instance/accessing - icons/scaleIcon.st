scaleIcon
	"Private - Generated method"
	^ icons
			at: #'scale'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self scaleIconContents readStream) ].