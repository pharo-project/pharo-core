items creation
createSearchMorph 
	| morph |
	morph := PluggableTextFieldMorph new
		on: self model
			text: #contents
			accept: #contents:
			readSelection: nil
			menu: nil;
		convertTo: String;
		alwaysAccept: true;
		acceptOnCR: true;
		autoAccept: true;
		getEnabledSelector: nil;
		font: UITheme current textFont;
		cornerStyle: (UITheme current textEntryCornerStyleIn: self);
		hResizing: #spaceFill;
		vResizing: #rigid;
		borderStyle: (BorderStyle inset width: 0);
		color: Color white ;
		selectionColor:  UITheme current selectionColor ;
		hideScrollBarsIndefinitely;
		extent: 24@(UITheme current textFont height + 8);
		setBalloonText: nil.
		
	morph ghostText: 'Search class or method...'.
	morph on: #keyStroke send: #localHandleKeystroke: to: self.
	morph textMorph lostFocusBlock: [ self delete ].
	morph textMorph
		autoFit: true;
		wrapFlag: false;
		margins: (2@1 corner: 2@1).
	
	^morph