example2

	|foundationBrick rootBrick brick1 brick2|
	
	rootBrick := GLMBrick new.
	rootBrick layoutPolicy: self new.
	
	rootBrick layoutProperties paddingLeft: 10.	
	rootBrick layoutProperties paddingTop: 10.
	rootBrick layoutProperties paddingRight: 10.	
	rootBrick layoutProperties paddingBottom: 10.
	rootBrick color: Color blue.
	
	brick1 := GLMBrick new.
	brick1 layoutProperties horizontalPercent: 100.
	brick1 extent: 50@70.
	brick1 color: Color red.
	
	brick2 := GLMBrick new.
	brick2 layoutProperties horizontalPercent: 0.
	brick2 layoutProperties minWidthBlock: [ 50 ].
	brick2 color: Color green.
	brick2 extent: 70@60.
	
	rootBrick
		addBrickBack: brick1;
		addBrickBack: brick2.
		
	foundationBrick := GLMFoundationBrick new.
	foundationBrick brickRoot: rootBrick.
	foundationBrick openInWindow.
	foundationBrick color: Color pink.
		
	
