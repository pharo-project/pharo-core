updateButtonsStateFrom: aModel

	(buttonsContainer submorphs last: (editors size+1)) do:[:e | 
		e model == aModel 
			ifFalse: [ e model setState: false ].
		e update: #state ]