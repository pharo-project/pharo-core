private - icons
smallBarcodeIcon
	"Private - Generated method"
	^icons
			at: #smallBarcodeIcon
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self smallBarcodeIconContents readStream) ].