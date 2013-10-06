arrowUpAndDownIcon 
	^ icons
			at: #'arrowUpAndDownIcon'
			ifAbsentPut:[ self arrowUpAndDownIconContents ].