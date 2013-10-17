smallExportIcon
	"Private - Generated method"
	^ icons
			at: #'smallExport'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self smallExportIconContents readStream) ].