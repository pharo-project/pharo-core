smallSaveAsIcon
	"Private - Generated method"
	^ icons
			at: #'smallSaveAs'
			ifAbsentPut: [ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self smallSaveAsIconContents readStream) ].