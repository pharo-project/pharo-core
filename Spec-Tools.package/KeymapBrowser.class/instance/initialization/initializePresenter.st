initializePresenter
	filterField
		whenTextChanged: [ :text | 
			clearFilterButton enabled: text isEmpty not.
			self setFilter: text ].
	clearFilterButton action: [ filterField text: '' ].
