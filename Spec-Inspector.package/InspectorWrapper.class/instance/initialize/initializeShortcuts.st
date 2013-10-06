initializeShortcuts
	self bindKeyCombination: $[ command toAction: [ self inspectPrevious ].
	self bindKeyCombination: $] command toAction: [ self inspectNext ].
	self bindKeyCombination: $d command toAction: [ self dive ].