checkBoxOffIcon
	"Private - Generated method"
	^ icons
			at: #'checkBoxOff'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self checkBoxOffIconContents readStream) ].