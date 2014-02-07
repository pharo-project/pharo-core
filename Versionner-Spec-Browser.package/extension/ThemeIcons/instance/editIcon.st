editIcon 
	^ icons
			at: #'editIcon'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self editIconContents readStream) ].