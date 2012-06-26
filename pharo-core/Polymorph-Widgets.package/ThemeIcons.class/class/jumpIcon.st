private - icons
jumpIcon
	"Private - Generated method"
	^ icons
			at: #'jump'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self jumpIconContents readStream) ].