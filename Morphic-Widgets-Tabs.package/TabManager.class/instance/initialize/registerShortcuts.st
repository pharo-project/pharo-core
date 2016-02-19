registerShortcuts

	self 
		bindKeyCombination: $] meta shift toAction: [ self selectNext ];
		bindKeyCombination: $[ meta shift toAction: [ self selectPrevious ];
		bindKeyCombination: $w meta toAction: [ self deleteSelectedTabs ];
		bindKeyCombination: $w meta shift toAction: [ self closeAllTabs ].
		
	1 to: 9 do: [ :index |
		self bindKeyCombination: index asString first meta toAction: [ self selectTabAt: index ] ].
	
	self bindKeyCombination: $0 meta toAction: [ self selectLastTab ]