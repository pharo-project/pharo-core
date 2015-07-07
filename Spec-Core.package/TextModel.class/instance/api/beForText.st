beForText
	self
		isCodeCompletionAllowed: false;
		menuHolder: [ :menu :shifted | 
					shifted
						ifTrue: [ TextEditor shiftedYellowButtonMenu ]
						ifFalse: [ TextEditor yellowButtonMenu ] ]