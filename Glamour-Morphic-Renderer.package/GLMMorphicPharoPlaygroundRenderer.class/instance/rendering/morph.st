morph
	^ RubScrolledTextMorph new
		model: textModel;
		beForSmalltalkScripting;
		textFont: StandardFonts codeFont;
		color: Smalltalk ui theme backgroundColor;
		notificationStrategy: GLMPopperNotificationStrategy new;
		yourself