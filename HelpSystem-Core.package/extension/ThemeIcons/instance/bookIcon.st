bookIcon 
	^ icons
			at: #'bookIcon'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self bookIconContents readStream) ].