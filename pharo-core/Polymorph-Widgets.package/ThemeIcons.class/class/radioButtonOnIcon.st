private - icons
radioButtonOnIcon
	"Private - Generated method"
	^ icons
			at: #'radioButtonOn'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self radioButtonOnIconContents readStream) ].