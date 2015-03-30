glamorousSmallCriticsWarningIcon
	^icons 
			at: #glamorousSmallCriticsWarningIcon
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self glamorousSmallCriticsWarningIconContents readStream) ].