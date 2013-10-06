solidMenuIcon
	"Private - Generated method"
	^ icons
			at: #'solidMenu'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self solidMenuIconContents readStream) ].