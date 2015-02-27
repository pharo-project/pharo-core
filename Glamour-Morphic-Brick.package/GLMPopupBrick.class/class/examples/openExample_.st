openExample: hoverAction
	|root|
	
	root := GLMBrick new marginTop: 35.
	1 to: 4 do: [ :i | root addBrickBack: (self createButton: hoverAction) ].
			
	root
		asBrickedMorph
			extent: 300@100;
			openInWindow