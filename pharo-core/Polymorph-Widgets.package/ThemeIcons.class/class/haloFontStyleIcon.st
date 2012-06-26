private - icons
haloFontStyleIcon
	"Private - Generated method"
	^ icons
			at: #'haloFontStyle'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self haloFontStyleIconContents readStream) ].