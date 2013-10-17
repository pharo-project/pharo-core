configurationIcon
	"Private - Generated method"
	^ icons
			at: #'configuration'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self configurationIconContents readStream) ].