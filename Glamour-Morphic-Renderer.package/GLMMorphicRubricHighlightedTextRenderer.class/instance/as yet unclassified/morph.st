morph
	| morph |
	
	morph := super morph.
	morph editingMode: textModel glamourPresentation editingMode.
	morph textFont: textModel glamourPresentation morphicFont.
	^ morph
		