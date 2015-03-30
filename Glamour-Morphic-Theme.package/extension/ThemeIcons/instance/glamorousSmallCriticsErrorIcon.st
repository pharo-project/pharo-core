glamorousSmallCriticsErrorIcon
	^icons 
			at: #glamorousSmallCriticsErrorIcon
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self glamorousSmallCriticsErrorIconContents readStream) ].