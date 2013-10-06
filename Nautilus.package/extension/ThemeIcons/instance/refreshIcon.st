refreshIcon 
	^ icons
			at: #'refreshIcon'
			ifAbsentPut:[ self refreshIconContents ].