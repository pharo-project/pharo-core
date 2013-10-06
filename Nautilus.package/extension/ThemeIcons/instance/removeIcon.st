removeIcon 
	^ icons
			at: #'removeIcon'
			ifAbsentPut:[ self removeIconContents ].