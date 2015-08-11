pageIcon 
	^ icons
			at: #'pageIcon'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self pageIconContents readStream) ].