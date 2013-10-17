smallPasteIcon
	"Private - Generated method"
	^ icons
			at: #'smallPaste'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self smallPasteIconContents readStream) ].