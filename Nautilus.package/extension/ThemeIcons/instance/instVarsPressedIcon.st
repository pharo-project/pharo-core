instVarsPressedIcon 
	^ icons
			at: #'instVarsPressedIcon'
			ifAbsentPut:[ self instVarsPressedIconContents ].