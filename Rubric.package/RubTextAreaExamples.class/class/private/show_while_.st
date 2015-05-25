show: aMessage while: aBlock
	| m |
	m := RubEditingArea new
		backgroundColor: Color black;
		beReadOnly;
		beWrapped;
		width: 300;
		setTextWith: aMessage;
		font: (LogicalFont familyName: 'Arial' pointSize: 20);
		textColor: Color white;
		centered;
		yourself.
	m
		openInWorld;
		centered.
	WorldState
		addDeferredUIMessage: [ 
			World displayWorldSafely.
			Cursor wait
				showWhile: [ 
					aBlock
						ensure: [ m delete ] ] ]