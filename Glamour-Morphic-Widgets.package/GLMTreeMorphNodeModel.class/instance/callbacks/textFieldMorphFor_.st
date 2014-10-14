textFieldMorphFor: textModel
	|morph|
	
	morph := GLMRubricTextFieldMorph new
		"getSelectionSelector: #primarySelectionInterval;"
		"model: textModel;"
		"color: Smalltalk ui theme backgroundColor;"
		color: Color transparent;
		editingMode: RubPlainTextMode new;
		textFont: StandardFonts defaultFont;
		yourself.
		
	self flag: 'Temporary solution until Moose moves to Pharo 4'.
	(Smalltalk ui theme class canPerform: #textColor) ifTrue: [ 
		morph textColor: Smalltalk ui theme  textColor ].
	
	^ morph