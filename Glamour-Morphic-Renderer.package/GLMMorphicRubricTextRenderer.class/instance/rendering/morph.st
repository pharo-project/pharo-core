morph
	|morph|
	morph := RubScrolledTextMorph new
		getSelectionSelector: #primarySelectionInterval;
		model: textModel;
		color: Smalltalk ui theme backgroundColor;
		textFont: StandardFonts defaultFont;
		yourself.
	self flag: 'Temporary solution until Moose moves to Pharo 4'.
	(Smalltalk ui theme class canPerform: #textColor) ifTrue: [ 
		morph textColor: Smalltalk ui theme  textColor ].
	^ morph