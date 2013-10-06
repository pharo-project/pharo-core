smallNewIcon
	"Private - Generated method"
	^ icons
			at: #'smallNew'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self smallNewIconContents readStream) ].