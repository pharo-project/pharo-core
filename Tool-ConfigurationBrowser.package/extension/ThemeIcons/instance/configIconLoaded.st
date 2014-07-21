configIconLoaded 
	^ icons
			at: #'configIconLoaded'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self configIconLoadedContents readStream)   ].