exampleZindex

	"self exampleZindex"

	|foundationBrick rootBrick brick1 brick2 brick3|
	
	rootBrick := GLMBrick new.
	rootBrick layoutPolicy: GLMBrickNoLayout new.

	rootBrick color: Color blue.
	
	brick1 := GLMBrick new.
	brick1 color: Color red.
	brick1 brickBounds: (0@0 extent: 300@200).
	brick1 layoutProperties zIndex: 1.
	
	brick2 := GLMBrick new.
	brick2 color: Color green.
	brick2 brickBounds: (50@50 extent: 200@100).
	brick2 layoutProperties zIndex: 2.
	
	brick3 := GLMBrick new.
	brick3 color: Color yellow.
	brick3 brickBounds: (100@100 extent: 100@100).
	brick3 layoutProperties zIndex: 3.
	
	rootBrick
		addBrickBack: brick3;
		addBrickBack: brick2;
		addBrickBack: brick1.
		
	foundationBrick := GLMFoundationBrick new.
	foundationBrick brickRoot: rootBrick.
	foundationBrick openInWindow.
	foundationBrick color: Color pink.