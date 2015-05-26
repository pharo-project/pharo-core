transcriptIcon
	"Private - Generated method"
	^ icons
			at: #'transcriptIcon'
			ifAbsentPut: [ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self transcriptIconContents readStream) ].