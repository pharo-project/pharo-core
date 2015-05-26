abstractIcon 
	^ icons
			at: #'abstractIcon'
			ifAbsentPut:[ self abstractIconContents ].