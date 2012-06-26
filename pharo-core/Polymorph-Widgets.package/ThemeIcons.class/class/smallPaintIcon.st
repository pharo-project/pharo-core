private - icons
smallPaintIcon
	"Private - Generated method"
	^ icons
			at: #'smallPaint'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self smallPaintIconContents readStream) ].