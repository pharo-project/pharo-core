private - icons
checkBoxOnIcon
	"Private - Generated method"
	^ icons
			at: #'checkBoxOn'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self checkBoxOnIconContents readStream) ].