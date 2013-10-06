smallDebugIcon
	"Private - Generated method"
	^ icons
			at: #'smallDebug'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self smallDebugIconContents readStream) ].