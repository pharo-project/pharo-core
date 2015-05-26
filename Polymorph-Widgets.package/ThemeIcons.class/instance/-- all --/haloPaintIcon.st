haloPaintIcon
	"Private - Generated method"
	^ icons
			at: #'haloPaint'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self haloPaintIconContents readStream) ].