private - icons
haloFontEmphIcon
	"Private - Generated method"
	^ icons
			at: #'haloFontEmph'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self haloFontEmphIconContents readStream) ].