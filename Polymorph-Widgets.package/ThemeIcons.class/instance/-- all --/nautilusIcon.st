nautilusIcon 
	^ icons
			at: #'nautilusIcon'
			ifAbsentPut:[ self nautilusIconContents ].