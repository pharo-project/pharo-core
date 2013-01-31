initialize
setWindowWidth
	| width receiver |
	
	width := extra 
				ifNil: [ self windowWidth ]
				ifNotNil:[ extra windowWidth ].
	
	(self window ifNil: [ ^ self ]) window width: width