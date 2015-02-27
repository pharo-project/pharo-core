on: aMorph
	
	aMorph layoutProperties ifNil: [ 
		aMorph layoutProperties: GLMBrickLayoutProperties new ].

	morph := aMorph.
	
	self addBrickBack: morph.
	self height: self morph height.