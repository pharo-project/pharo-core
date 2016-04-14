morph
	|morph|
	morph := RubScrolledTextMorph new
		model: textModel;
		beForSmalltalkScripting;
		getSelectionSelector: #primarySelectionInterval;
		textFont: StandardFonts codeFont;
		color: Smalltalk ui theme backgroundColor;
		notificationStrategy: GLMPopperNotificationStrategy new;
		yourself.
	^ morph