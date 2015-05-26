haloGrabIcon
	"Private - Generated method"
	^ icons
			at: #'haloGrab'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self haloGrabIconContents readStream) ].