haltIcon 
	^ icons
			at: #'haltIcon'
			ifAbsentPut:[ self haltIconContents ].