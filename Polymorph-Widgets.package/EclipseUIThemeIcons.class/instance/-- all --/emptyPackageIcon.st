emptyPackageIcon
	^ icons
			at: #'emptyPackageIcon'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self emptyPackageIconContents readStream) ].