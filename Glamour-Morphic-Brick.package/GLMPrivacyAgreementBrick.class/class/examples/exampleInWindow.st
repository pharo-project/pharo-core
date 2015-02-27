exampleInWindow

	(GLMBrick new
		hSpaceFill;
		vSpaceFill;
		addBrickBack: (
			self example
				padding: 2;
				borderColor: Color lightGray;
				borderWidth: 2;
				margin: 10;
				hSpaceFill;
				vShrinkWrap;
				with: [ :b |
					b advancedOption
						text: 'Include search query and selected search results'.
					b advancedOption
						text: 'Include developer name';
						uncheck ];
				yourself);
		yourself)
			openInBrickWindow