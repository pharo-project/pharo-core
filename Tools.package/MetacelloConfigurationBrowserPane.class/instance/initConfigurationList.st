initialization
initConfigurationList	

	"Display in format name (author.version)"	
	configurationList displayBlock: [:item | 
		|tokens|
		tokens := (item findTokens: '-.').
		(tokens first allButFirst: 15), ' (',tokens second ,'.', tokens third, ')' ].  

	"Display loaded with a special icon (assuming the mcz is named like the class"
	configurationList icons: [:e | 
		(Smalltalk includesKey: (e findTokens: '-.') first asSymbol)
			ifTrue: [  ThemeIcons configIconLoaded  ]
			ifFalse: [ ThemeIcons configIcon  ]].
	
	