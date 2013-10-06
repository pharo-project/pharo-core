checkBoxPressedIcon
	"Private - Generated method"
	^ icons
			at: #'checkBoxPressed'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self checkBoxPressedIconContents readStream) ].