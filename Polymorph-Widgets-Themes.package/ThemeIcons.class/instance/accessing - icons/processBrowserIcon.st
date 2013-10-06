processBrowserIcon
	^ icons
			at: #'processBrowserIcon'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self processBrowserIconContents readStream) ].