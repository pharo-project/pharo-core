smallLanguageIcon
	"Private - Generated method"
	^ icons
			at: #'smallLanguage'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self smallLanguageIconContents readStream) ].