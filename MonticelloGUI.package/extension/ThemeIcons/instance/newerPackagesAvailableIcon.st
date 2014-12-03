newerPackagesAvailableIcon 
	^ icons
			at: #'newerPackagesAvailableIcon'
			ifAbsentPut:[ self newerPackagesAvailableIconContents ].