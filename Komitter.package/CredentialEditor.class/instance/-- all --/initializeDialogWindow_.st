initializeDialogWindow: aWindow

	self 
		bindKeyCombination: $m control 
		toAction: [ aWindow triggerOkAction ]