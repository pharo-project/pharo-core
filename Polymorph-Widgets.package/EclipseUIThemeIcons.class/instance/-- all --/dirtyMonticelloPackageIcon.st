dirtyMonticelloPackageIcon 
	^ icons
			at: #'dirtyMonticelloPackageIcon'
			ifAbsentPut:[ 
				(self monticelloPackageIcon asFormOfDepth: 32)
					mergeBottomRightWith: (Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self overlayDirtyIconContents readStream)) ].