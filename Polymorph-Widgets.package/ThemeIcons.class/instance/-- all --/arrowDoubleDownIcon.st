arrowDoubleDownIcon 
	^ icons
			at: #'arrowDoubleDownIcon'
			ifAbsentPut:[ self arrowDoubleDownIconContents ].