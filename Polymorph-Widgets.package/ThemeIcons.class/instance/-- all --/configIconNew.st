configIconNew
	^ icons
			at: #'configIconNew'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self configIconNewContents readStream) ].