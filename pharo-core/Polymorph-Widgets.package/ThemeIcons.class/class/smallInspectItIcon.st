private - icons
smallInspectItIcon
	"Private - Generated method"
	^ icons
			at: #'smallInspectIt'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self smallInspectItIconContents readStream) ].