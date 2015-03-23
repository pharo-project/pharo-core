editBrick: aBrick

	editBrick := aBrick.
	
	self editBrick
		hShrinkWrap;
		vShrinkWrap;
		withoutMargins;
		withoutAdornment;
		withoutBorder;
		beTransparent;
		autoAccept: true;
		rubricTextFamilyName: StandardFonts defaultFont familyName;
		rubricTextFontSize: StandardFonts defaultFont pointSize.
	
	self editBrick rubric forceHeight: [ self labelBrick height ].
	
	self editBrick rubric announcer weak subscribe: RubReturnEntered  send: #onTextAccepted: to: self.
	self editBrick rubric announcer weak subscribe: MorphLostFocus send: #onLostFocus to: self.
	self editBrick rubric announcer weak subscribe: MorphGotFocus send: #onGotFocus: to: self.
	self editBrick rubric announcer weak subscribe: RubTextAcceptRequest send: #onTextChanged: to: self