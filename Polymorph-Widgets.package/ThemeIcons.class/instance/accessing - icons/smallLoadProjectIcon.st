smallLoadProjectIcon
	"Private - Generated method"
	^ icons
			at: #'smallLoadProject'
			ifAbsentPut: [ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self smallLoadProjectIconContents readStream) ].