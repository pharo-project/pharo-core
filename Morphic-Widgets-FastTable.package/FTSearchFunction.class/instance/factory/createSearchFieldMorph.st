createSearchFieldMorph
	^ PluggableTextFieldMorph new
		on: self
			text: #text
			accept: #searchFor:
			readSelection: nil
			menu: nil;
		convertTo: String;
		alwaysAccept: true;
		autoAccept: true;
		font: Smalltalk ui theme textFont;
		cornerStyle: (Smalltalk ui theme textEntryCornerStyleIn: self);
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		borderStyle: (BorderStyle simple width: 0);
		hideScrollBarsIndefinitely;
		borderColor: Smalltalk ui theme borderColor;
		borderWidth: 3;
		extent: ((self table width / 2) min: 150)@25;
		bindKeyCombination: Character cr asKeyCombination toAction: [ self accept ];
		bindKeyCombination: Character escape asKeyCombination toAction: [ self resetAndFocusOwner ];
		in: [ :me | me textMorph onAnnouncement: MorphLostFocus send: #reset to: self ];
		yourself
		