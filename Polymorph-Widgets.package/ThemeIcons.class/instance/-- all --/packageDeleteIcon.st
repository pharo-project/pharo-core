packageDeleteIcon 
	^ icons
			at: #'packageDeleteIcon'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self packageDeleteIconContents readStream) ].