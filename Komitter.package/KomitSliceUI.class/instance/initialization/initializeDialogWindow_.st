initializeDialogWindow: aWindow

	valid whenChangedDo: [ :b | aWindow toolbar okButton enabled: b ].
	aWindow toolbar okButton enabled: false.
	issueNumber 
		bindKeyCombination: $m control
		toAction: [ self valid ifTrue: [ aWindow triggerOkAction ] ]