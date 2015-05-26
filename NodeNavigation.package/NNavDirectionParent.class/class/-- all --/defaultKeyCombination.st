defaultKeyCombination
	^NNavNavigation useArrowsShortcuts 
		ifTrue: [ Character arrowLeft command shift  mac | Character arrowLeft ctrl shift ]
		ifFalse: [ $p command shift  mac| $p ctrl shift unix | $p ctrl shift  ]

