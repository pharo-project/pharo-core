title
	^ '[', (class == target
			ifTrue: [ selector ]
			ifFalse: [ class name, '>>#', selector ] ) , '] ', super title