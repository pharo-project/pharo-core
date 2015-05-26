volumeIcon
	"Private - Generated method"
	^ icons
			at: #'volume'
			ifAbsentPut: [ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self volumeIconContents readStream) ].