example
	"this example must be called on my subclasses"
	| rootBrick brick1 brick2 brick3 |
	
	rootBrick := GLMInteractableBrick new
		layoutPolicy: GLMBrickVerticalFillLinearLayout new;
		extent: 400@400;
		disable;
		selectedColor: Color blue darker;
		color: Color blue.
	
	rootBrick layoutProperties
		paddingLeft: 10;
		paddingTop: 15;
		paddingRight: 20;
		paddingBottom: 5.
	
	" ---- Creating first brick ---- "
	brick1 := GLMStringBrick new
		extent: 200@70;
		text: 'Welcome to Brick!';
		textColor: Color white;
		textPosition: #center;
		color: Color green;
		selectedColor: Color darkGray;
		normalColor: Color red;
		pressedColor: Color gray;
		enable.
		
	brick1 layoutProperties
		marginLeft: 10;	
		marginTop: 15;
		marginRight: 20;	
		marginBottom: 5;
		horizontalPercent: 30;
		verticalPercent: 30.
		
	" ---- Creating second brick ---- "
	brick2 := GLMInteractableBrick new
		color: Color green;
		selectedColor: Color pink;
		normalColor: Color green;
		pressedColor: Color lightGray;
		enable;
		extent: 70@60.
	
	brick2 layoutProperties
		marginLeft: 10;
		marginTop: 15;	
		marginRight: 20;
		marginBottom: 5;
		horizontalPercent: 50;
		verticalPercent: 50.
		
	" ---- Creating third brick ---- "
	brick3 := GLMStringBrick new
		extent: 300@200;
		text: 'Welcome to Brick!';
		textColor: Color black;
		color: Color yellow.
		
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
	
	rootBrick asBrickedMorph extent: 400@400; openInWorld