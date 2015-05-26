scriptManagerIcon
	"Private - Generated method"
	^ icons
			at: #'scriptManagerIcon'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self scriptManagerIconContents readStream) ].