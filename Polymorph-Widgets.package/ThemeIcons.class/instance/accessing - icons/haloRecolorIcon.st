haloRecolorIcon
	"Private - Generated method"
	^ icons
			at: #'haloRecolor'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self haloRecolorIconContents readStream) ].