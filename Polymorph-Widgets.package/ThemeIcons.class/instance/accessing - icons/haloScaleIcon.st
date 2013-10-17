haloScaleIcon
	"Private - Generated method"
	^ icons
			at: #'haloScale'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self haloScaleIconContents readStream) ].