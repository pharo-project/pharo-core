private - icons
smallAuthoringToolsIcon
	"Private - Generated method"
	^ icons
			at: #'smallAuthoringTools'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self smallAuthoringToolsIconContents readStream) ].