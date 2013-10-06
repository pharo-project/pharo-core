arrowDownIcon 
	^ icons
			at: #'arrowDownIcon'
			ifAbsentPut:[ self arrowDownIconContents ].