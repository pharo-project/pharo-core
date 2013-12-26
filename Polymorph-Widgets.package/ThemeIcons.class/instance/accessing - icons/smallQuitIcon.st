smallQuitIcon
	"Private - Generated method"
	^ icons
			at: #'smallQuit'
			ifAbsentPut: [ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self smallQuitIconContents readStream) ].