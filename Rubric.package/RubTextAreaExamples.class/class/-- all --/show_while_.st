show: aMessage while: aBlock
	| m |
	m := RubEditingArea new
		backgroundColor: Color black;
		textColor: Color white;
		beReadOnly;
		beWrapped;
		width: 300;
		setTextWith: aMessage;
		fontPointSize: 18;
		selectAll;
		centered;
		deselect;
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