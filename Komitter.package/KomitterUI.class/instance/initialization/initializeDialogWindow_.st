initializeDialogWindow: aWindow

	self removeKeyCombination: $m control.
	self bindKeyCombination: $m control toAction: [ aWindow triggerOkAction ].

	aWindow toolbar okButton enabled: canCommit value.

	canCommit whenChangedDo: [ :b | aWindow toolbar okButton enabled: b ].
	
	self focusOrder
		removeAll;
		add: message;
		add: remotes;
		add: aWindow toolbar;
		add: tree;
		add: previousMessages