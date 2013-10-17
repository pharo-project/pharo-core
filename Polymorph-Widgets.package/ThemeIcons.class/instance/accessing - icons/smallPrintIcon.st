smallPrintIcon
	"Private - Generated method"
	^ icons
			at: #'smallPrint'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self smallPrintIconContents readStream) ].