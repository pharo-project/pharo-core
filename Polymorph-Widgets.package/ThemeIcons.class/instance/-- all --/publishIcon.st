publishIcon
	"Private - Generated method"
	^ icons
			at: #'publish'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self publishIconContents readStream) ].