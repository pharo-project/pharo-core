configIconDirty 
	^ icons
			at: #'configIconDirty'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self configIconDirtyContents readStream) ].