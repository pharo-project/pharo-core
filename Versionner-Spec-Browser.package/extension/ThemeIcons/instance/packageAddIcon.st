packageAddIcon 
	^ icons
			at: #'packageAddIcon'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self packageAddIconContents readStream) ].