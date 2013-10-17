openIcon
	"Private - Generated method"
	^ icons
			at: #'open'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self openIconContents readStream) ].