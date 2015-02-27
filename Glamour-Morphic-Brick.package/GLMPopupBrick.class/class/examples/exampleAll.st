exampleAll
	<example: 'all types'>

	(GLMBrick new
		addBrickBack: (self createButton: [ :b | self new openFor: b ]);
		addBrickBack: (self createButton: [ :b | self new beHelp; openFor: b ]);
		addBrickBack: (self createButton: [ :b | self new beError; openFor: b ]);
		addBrickBack: (self createButton: [ :b | self new beSuccess; openFor: b ]);
		marginTop: 35)
			asBrickedMorph
				extent: 300@120;
				openInWindow