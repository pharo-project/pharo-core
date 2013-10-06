changeSorterIcon
	^ icons
			at: #'changeSorterIcon'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self changeSorterIconContents readStream) ].