smallPrintItIcon
	"Private - Generated method"
	^ icons
			at: #'smallPrintItIcon'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self smallPrintItIconContents readStream) ].