smallFullscreenIcon
	"Private - Generated method"
	^ icons
			at: #'smallFullscreen'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self smallFullscreenIconContents readStream) ].