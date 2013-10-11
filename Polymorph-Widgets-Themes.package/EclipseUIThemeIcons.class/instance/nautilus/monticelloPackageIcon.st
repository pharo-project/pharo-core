monticelloPackageIcon
	^ icons
			at: #'monticelloPackageIcon'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self monticelloPackageIconContents readStream) ].