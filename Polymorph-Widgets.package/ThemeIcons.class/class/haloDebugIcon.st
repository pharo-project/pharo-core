private - icons
haloDebugIcon
	"Private - Generated method"
	^ icons
			at: #'haloDebug'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self haloDebugIconContents readStream) ].