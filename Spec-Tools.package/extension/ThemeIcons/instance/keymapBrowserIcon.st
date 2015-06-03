keymapBrowserIcon 
 
	^ icons
			at: #'keymapBrowserIcon'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self keymapBrowserIconContents  readStream)   ].