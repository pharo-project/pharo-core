dirtyPackageIcon 
	^ icons
			at: #'dirtyPackageIcon'
			ifAbsentPut:[ 
				(self packageIcon asFormOfDepth: 32)
					mergeBottomRightWith: (Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self overlayDirtyIconContents readStream)) ].