private - icons
smallHomeIcon
	"Private - Generated method"
	^ icons
			at: #'smallHome'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self smallHomeIconContents readStream) ].