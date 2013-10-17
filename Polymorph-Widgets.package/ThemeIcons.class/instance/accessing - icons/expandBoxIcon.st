expandBoxIcon
	"Private - Generated method"
	^ icons
			at: #'expandBox'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self expandBoxIconContents readStream) ].