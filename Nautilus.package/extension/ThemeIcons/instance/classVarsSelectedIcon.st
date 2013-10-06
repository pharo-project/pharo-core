classVarsSelectedIcon 
	^ icons
			at: #'classVarsSelectedIcon'
			ifAbsentPut:[ self classVarsSelectedIconContents ].