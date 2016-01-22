title
	^ '[', (class == sourceAnchor entity
			ifTrue: [ selector ]
			ifFalse: [ class name, '>>#', selector ] ) , '] ', super title