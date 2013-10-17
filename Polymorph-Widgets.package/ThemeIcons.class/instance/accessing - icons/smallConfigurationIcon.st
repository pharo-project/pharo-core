smallConfigurationIcon
	"Private - Generated method"
	^ icons
			at: #'smallConfiguration'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self smallConfigurationIconContents readStream) ].