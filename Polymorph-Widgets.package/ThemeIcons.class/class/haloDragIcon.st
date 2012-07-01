private - icons
haloDragIcon
	"Private - Generated method"
	^ icons
			at: #'haloDrag'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self haloDragIconContents readStream) ].