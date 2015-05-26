groupIcon 
	^ icons
			at: #'groupIcon'
			ifAbsentPut:[ self groupIconContents ].