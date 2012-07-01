private - icons
helpIcon
	"Private - Generated method"
	^ icons
			at: #'help'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self helpIconContents readStream) ].