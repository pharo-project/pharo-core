example

	|foundationBrick rootBrick brick1 brick2 brick3|
	
	rootBrick := GLMBrick new.
	rootBrick layoutPolicy: self new.
	
	rootBrick layoutProperties paddingLeft: 10.	
	rootBrick layoutProperties paddingTop: 15.
	rootBrick layoutProperties paddingRight: 20.	
	rootBrick layoutProperties paddingBottom: 5.
	rootBrick color: Color blue.
	
	brick1 := GLMBrick new.
	brick1 layoutProperties marginLeft: 10.	
	brick1 layoutProperties marginTop: 15.	
	brick1 layoutProperties marginRight: 20.	
	brick1 layoutProperties marginBottom: 5.
	brick1 layoutProperties horizontalPercent: 30.
	brick1 layoutProperties verticalPercent: 30.
	brick1 extent: 50@70.
	brick1 color: Color red.
	
	brick2 := GLMBrick new.
	brick2 layoutProperties marginLeft: 10.	
	brick2 layoutProperties marginTop: 15.	
	brick2 layoutProperties marginRight: 20.
	brick2 layoutProperties marginBottom: 5.
	brick2 layoutProperties horizontalPercent: 50.
	brick2 layoutProperties verticalPercent: 50.
	brick2 color: Color green.
	brick2 extent: 70@60.
	
	brick3 := GLMBrick new.
	brick3 layoutProperties marginLeft: 10.	
	brick3 layoutProperties marginTop: 15.	
	brick3 layoutProperties marginRight: 20.	
	brick3 layoutProperties marginBottom: 5.
	brick3 layoutProperties horizontalPercent: 20.
	brick3 layoutProperties verticalPercent: 20.
	brick3 color: Color yellow.
	brick3 extent: 100@50.
	
	rootBrick
		addBrickBack: brick1;
		addBrickBack: brick2;
		addBrickBack: brick3.
		
	foundationBrick := GLMFoundationBrick new.
	foundationBrick brickRoot: rootBrick.
	foundationBrick openInWindow.
	foundationBrick color: Color pink.
