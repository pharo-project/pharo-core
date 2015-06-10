iconFor: project

	 ^(Smalltalk includesKey: project packageName asSymbol)
		ifTrue: [  Smalltalk ui icons configIconLoaded ]
		ifFalse: [ Smalltalk ui icons configIcon ]