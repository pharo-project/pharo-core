morph
	|morph|
	morph := RubScrolledTextMorph new
		beForSmalltalkScripting;
		model: textModel;
		getSelectionSelector: #primarySelectionInterval;
		textFont: StandardFonts codeFont;
		color: Smalltalk ui theme backgroundColor;
		notificationStrategy: GLMPopperNotificationStrategy new;
		yourself.
	textModel addDependent: morph.
	^ morph