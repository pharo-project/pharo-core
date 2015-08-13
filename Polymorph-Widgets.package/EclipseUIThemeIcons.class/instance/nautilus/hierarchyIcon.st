hierarchyIcon
	^ icons 
			at: #hierarchyIcon
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self hierarchyIconContents readStream) ].