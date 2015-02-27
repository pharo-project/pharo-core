exampleInfinity
	|adaptor|
	adaptor := nil.
	adaptor := GLMBrickListAdaptor new
		sizeLogic: [ Float infinity ];
		morphAtLogic: [ :index :morph | 
			(morph ifNil: [ GLMLabelBrick new ])
				color: Color random muchLighter;
				text: index asString, ' of ', adaptor count asString;
				textPosition: #center;
				hSpaceFill;
				yourself ].

	GLMFoundationBrick new
		brickRoot: (self new adaptor: adaptor);
		extent: 300@400;
		openInWindow