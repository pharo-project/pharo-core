hintRevealArrowStyleFor: aBrick
	
	SmalltalkImage current vm interpreterSourceDate < 2015 asYear 
		ifTrue: [ ^ self ].
	
	aBrick ifNil: [ ^ self ].
	(aBrick valueOfProperty: #brickSpotterIsReveal ifAbsent: [ false ])
		ifTrue: [ ^ self ].
	
	aBrick setProperty: #brickSpotterBackupColor toValue: aBrick color.
	aBrick setProperty: #brickSpotterIsReveal toValue: true.
	
	aBrick color: self themer popupHelpThemer backgroundColor.
	
	aBrick changed