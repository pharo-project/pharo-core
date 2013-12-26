windowCloseForm
	^ icons
			at: #'calendarIcon'
			ifAbsentPut: [ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self windowCloseFormContents readStream) ].