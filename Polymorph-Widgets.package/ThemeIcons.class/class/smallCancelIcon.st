private - icons
smallCancelIcon
	"Private - Generated method"
	^ icons
			at: #'smallCancel'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self smallCancelIconContents readStream) ].