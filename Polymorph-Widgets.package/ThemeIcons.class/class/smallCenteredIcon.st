private - icons
smallCenteredIcon
	"Private - Generated method"
	^ icons
			at: #'smallCentered'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self smallCenteredIconContents readStream) ].