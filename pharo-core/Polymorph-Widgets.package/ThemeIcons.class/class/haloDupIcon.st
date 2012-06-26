private - icons
haloDupIcon
	"Private - Generated method"
	^ icons
			at: #'haloDup'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self haloDupIconContents readStream) ].