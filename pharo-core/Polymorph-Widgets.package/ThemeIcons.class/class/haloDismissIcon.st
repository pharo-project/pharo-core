private - icons
haloDismissIcon
	"Private - Generated method"
	^ icons
			at: #'haloDismiss'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self haloDismissIconContents readStream) ].