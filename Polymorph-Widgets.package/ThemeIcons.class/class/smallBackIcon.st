private - icons
smallBackIcon
	"Private - Generated method"
	^ icons
			at: #'smallBack'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self smallBackIconContents readStream) ].