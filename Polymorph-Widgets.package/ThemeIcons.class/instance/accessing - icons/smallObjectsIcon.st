smallObjectsIcon
	"Private - Generated method"
	^ icons
			at: #'smallObjects'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self smallObjectsIconContents readStream) ].