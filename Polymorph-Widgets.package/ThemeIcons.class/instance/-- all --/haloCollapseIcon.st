haloCollapseIcon
	"Private - Generated method"
	^ icons
			at: #'haloCollapse'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self haloCollapseIconContents readStream) ].