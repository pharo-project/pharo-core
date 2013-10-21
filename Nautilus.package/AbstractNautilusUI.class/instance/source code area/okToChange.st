okToChange
	| wrapper |
	sourceTextArea text asString trimBoth = sourceTextArea getText asString trimBoth ifTrue: [ ^ true ].
	sourceTextArea canDiscardEdits ifTrue: [^ true].
	
	wrapper := (NautilusHistoryEntryWithSourceCode 
		with: self model)
		sourceCode: self sourceTextArea textMorph text.
	
	self model removeLastHistoryEntry.
	
	self model browsingHistory add: wrapper.
	self model triggerEvent: #historyChanged.
		
	^ true