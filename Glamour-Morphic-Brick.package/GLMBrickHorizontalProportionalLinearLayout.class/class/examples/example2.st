example2
	"self example2"
	| rootBrick brick1 brick2|
	
	rootBrick := GLMBrick new
		layoutPolicy: self new;
		color: Color blue.
	
	rootBrick layoutProperties
		paddingLeft: 10;
		paddingTop: 10;
		paddingRight: 10;	
		paddingBottom: 10.
	
	brick1 := GLMBrick new
		extent: 50@70;
		color: Color red.
	brick1 layoutProperties horizontalPercent: 100.
	
	brick2 := GLMBrick new
		color: Color green;
		extent: 70@60.
		
	brick2 layoutProperties
		horizontalPercent: 0;
		minWidthBlock: [ 50"px"].
	
	rootBrick
		addBrickBack: brick1;
		addBrickBack: brick2.
		
	rootBrick asBrickedMorph
		extent: 600@400;
		openInWindow
		
	
