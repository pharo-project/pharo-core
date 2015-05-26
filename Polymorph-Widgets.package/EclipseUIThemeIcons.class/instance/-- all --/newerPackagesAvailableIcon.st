newerPackagesAvailableIcon 
	^ icons
			at: #'newerPackagesAvailableIcon'
			ifAbsentPut:[ 
				(self packageIcon asFormOfDepth: 32)
					mergeWith: (Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self overlayAddIconContents readStream)) ].