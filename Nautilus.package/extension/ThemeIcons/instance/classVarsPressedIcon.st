classVarsPressedIcon 
	^ icons
			at: #'classVarsPressedIcon'
			ifAbsentPut:[ self classVarsPressedIconContents ].