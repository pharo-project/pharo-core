smallRedoIcon
	"Private - Generated method"
	^ icons
			at: #'smallRedo'
			ifAbsentPut: [ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self smallRedoIconContents readStream) ].