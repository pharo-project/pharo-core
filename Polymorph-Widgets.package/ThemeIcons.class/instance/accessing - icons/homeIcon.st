homeIcon
	"Private - Generated method"
	^ icons
			at: #'home'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self homeIconContents readStream) ].