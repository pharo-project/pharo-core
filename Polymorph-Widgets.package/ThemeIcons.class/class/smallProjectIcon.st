private - icons
smallProjectIcon
	"Private - Generated method"
	^ icons
			at: #'smallProject'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self smallProjectIconContents readStream) ].