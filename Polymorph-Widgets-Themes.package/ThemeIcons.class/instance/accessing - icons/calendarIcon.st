calendarIcon
	^ icons
			at: #'calendarIcon'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self calendarIconContents readStream) ].