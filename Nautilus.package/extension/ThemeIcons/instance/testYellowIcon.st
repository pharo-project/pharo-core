testYellowIcon 
	^ icons
			at: #'testYellowIcon'
			ifAbsentPut:[ self testYellowIconContents ].