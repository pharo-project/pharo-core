removeIcon 
	^ icons
			at: #'removeIcon'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self removeIconContents readStream) ].