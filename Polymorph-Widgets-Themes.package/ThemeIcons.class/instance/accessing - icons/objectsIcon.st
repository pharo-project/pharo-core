objectsIcon
	"Private - Generated method"
	^ icons
			at: #'objects'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self objectsIconContents readStream) ].