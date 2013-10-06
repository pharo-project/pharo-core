testNotRunIcon 
	^ icons
			at: #'testNotRunIcon'
			ifAbsentPut:[ self testNotRunIconContents ].