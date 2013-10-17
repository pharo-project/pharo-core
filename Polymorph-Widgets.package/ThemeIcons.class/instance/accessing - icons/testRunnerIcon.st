testRunnerIcon
	"Private - Generated method"
	^ icons
			at: #'testRunnerIcon'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self testRunnerIconContents readStream) ].