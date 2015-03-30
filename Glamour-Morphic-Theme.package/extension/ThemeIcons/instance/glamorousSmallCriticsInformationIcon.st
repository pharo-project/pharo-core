glamorousSmallCriticsInformationIcon
	^icons 
			at: #glamorousSmallCriticsInformationIcon
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self glamorousSmallCriticsInformationIconContents readStream) ].