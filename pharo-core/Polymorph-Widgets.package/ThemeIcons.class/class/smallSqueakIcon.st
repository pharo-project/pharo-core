private - icons
smallSqueakIcon
	"Private - Generated method"
	^ icons
			at: #'smallSqueak'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self smallSqueakIconContents readStream) ].