exampleContent

	| rootBrick brick1 brick2 brick3 |
	
	rootBrick := GLMInteractableBrick new
		useVerticalLinearLayout;
		vSpaceFill;
		hSpaceFill;
		padding: #(15 20 5 20).
	
	" ---- Creating first brick ---- "
	brick1 := GLMStringBrick new
		text: 'Welcome to Brick!';
		textColor: Color white;
		textPosition: #center;
		normalColor: Color veryLightGray;
		selectedColor: Color veryLightGray darker;
		pressedColor: Color gray;
		enable;
		hSpaceFill: 30;
		height: 30.		
		
	" ---- Creating second brick ---- "
	brick2 := GLMInteractableBrick new
		normalColor: Color veryLightGray;
		selectedColor: Color veryLightGray darker;
		pressedColor: Color gray;
		enable;
		margin: #(15 20 5 10);
		hSpaceFill: 90;
		vSpaceFill: 50.
		
		
	" ---- Creating third brick ---- "
	brick3 := GLMStringBrick new
		text: 'Welcome to Brick!';
		textColor: Color black;
		normalColor: Color veryLightGray;
		selectedColor: Color veryLightGray darker;
		pressedColor: Color gray;
		margin: #(15 20 5 10);
		hSpaceFill: 70;
		vSpaceFill: 20.
		
		
	" ---- Add them to the root brick ---- "
	rootBrick
		addBrickBack: brick1;
		addBrickBack: brick2;
		addBrickBack: brick3.
	
	rootBrick openInBrickWindow