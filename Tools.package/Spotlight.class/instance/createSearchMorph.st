items creation
createSearchMorph 
	| pt |
	pt := PluggableTextFieldMorph new
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
		borderStyle: (BorderStyle inset width: 1);
		color: Color white;
		selectionColor: UITheme current selectionColor;
		hideScrollBarsIndefinitely;
		extent: 24@(UITheme current textFont height + 8);
		setBalloonText: nil.
		
	pt on: #keyStroke send: #localHandleKeystroke: to: self.
	pt textMorph lostFocusBlock: [ self delete ].
	pt textMorph
		autoFit: true;
		wrapFlag: false;
		margins: (2@1 corner: 2@1).
	
	^pt