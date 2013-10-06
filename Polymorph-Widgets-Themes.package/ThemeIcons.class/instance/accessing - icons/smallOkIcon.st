smallOkIcon
	"Private - Generated method"
	^ icons
			at: #'smallOk'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self smallOkIconContents readStream) ].