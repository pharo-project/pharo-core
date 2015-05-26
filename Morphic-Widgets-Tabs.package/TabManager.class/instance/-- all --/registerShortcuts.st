registerShortcuts

	self 
		bindKeyCombination: $] command shift | $] control shift toAction: [ self selectNext ];
		bindKeyCombination: $[ command shift | $[ control shift toAction: [ self selectPrevious ];
		bindKeyCombination: $w command | $w control toAction: [ self deleteSelectedTabs ];
		bindKeyCombination: $w command shift | $w control shift toAction: [ self closeAllTabs ].
		
	1 to: 9 do: [ :index |
		self bindKeyCombination: index asString first command | index asString first control toAction: [ self selectTabAt: index ] ].
	
	self bindKeyCombination: $0 command | $0 control toAction: [ self selectLastTab ]