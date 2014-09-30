onSelectedPageChanged
	
	panes do: [ :each | each borderColor: Color transparent ].
	
	self theme pagerWidgetThemer selectedPaneStyleFor: (panes at: pagerModel selectedPageIndex)