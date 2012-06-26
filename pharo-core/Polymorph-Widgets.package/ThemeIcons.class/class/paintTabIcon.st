private - icons
paintTabIcon
	"Private - Generated method"
	^ icons
			at: #'paintTab'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self paintTabIconContents readStream) ].