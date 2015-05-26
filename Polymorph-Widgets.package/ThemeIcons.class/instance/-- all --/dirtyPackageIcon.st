dirtyPackageIcon 
	^ icons
			at: #'dirtyPackageIcon'
			ifAbsentPut:[ self dirtyPackageIconContents ].