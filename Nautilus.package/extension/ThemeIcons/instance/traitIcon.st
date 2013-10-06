traitIcon 
	^ icons
			at: #'traitIcon'
			ifAbsentPut:[ self traitIconContents ].