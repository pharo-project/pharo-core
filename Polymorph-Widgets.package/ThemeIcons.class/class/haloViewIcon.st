private - icons
haloViewIcon
	"Private - Generated method"
	^ icons
			at: #'haloView'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self haloViewIconContents readStream) ].