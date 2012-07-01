private - icons
smallJustifiedIcon
	"Private - Generated method"
	^ icons
			at: #'smallJustified'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self smallJustifiedIconContents readStream) ].