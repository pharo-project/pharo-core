beForCode
	self
		isCodeCompletionAllowed: true;
		menuHolder: [ :menu :shifted | 
					shifted
						ifTrue: [ SmalltalkEditor shiftedYellowButtonMenu ]
						ifFalse: [ SmalltalkEditor yellowButtonMenu ] ]