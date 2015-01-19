example
	"this example must be called on my subclasses"
	| rootBrick brick1 brick2 brick3|
	
	rootBrick := GLMBrick new
		layoutPolicy: self new;
		color: Color blue.
	
	rootBrick layoutProperties
		paddingLeft: 10;
		paddingTop: 15;
		paddingRight: 20;
		paddingBottom: 5.
	
	" ---- Creating first brick ---- "
	brick1 := GLMBrick new
		extent: 50@70;
		color: Color red.
		
	brick1 layoutProperties
		marginLeft: 10;	
		marginTop: 15;
		marginRight: 20;	
		marginBottom: 5;
		horizontalPercent: 30;
		verticalPercent: 30.
		
	" ---- Creating second brick ---- "
	brick2 := GLMBrick new
		color: Color green;
		extent: 70@60.
	
	brick2 layoutProperties
		marginLeft: 10;
		marginTop: 15;	
		marginRight: 20;
		marginBottom: 5;
		horizontalPercent: 50;
		verticalPercent: 50.
		
	" ---- Creating third brick ---- "
	brick3 := GLMBrick new
		color: Color yellow;
		extent: 100@50.
		
	brick3 layoutProperties
		marginLeft: 10;
		marginTop: 15;
		marginRight: 20;	
		marginBottom: 5;
		horizontalPercent: 20;
		verticalPercent: 20.
		
	" ---- Add them to the root brick ---- "
	rootBrick
		addBrickBack: brick1;
		addBrickBack: brick2;
		addBrickBack: brick3.
	
	rootBrick asBrickedMorph
		extent: 600@400;
		openInWindowLabeled: self name