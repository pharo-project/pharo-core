registerEvents

	listHolder whenChangedDo: [ self refreshListItems ].
	filteringBlockHolder whenChangedDo: [ self refreshListItems ].
	selectionHolder index whenChangedDo: [ self changed: #getIndex ].
	multiSelection whenChangedDo: [ :b | self changed: { #setMultipleSelection: . b } ].
	wrapBlockHolder whenChangedDo:[ self changed: #listElementAt: ].
	sortingBlockHolder
		whenChangedDo: [ 
			listHolder contents: (listHolder contents sorted: sortingBlockHolder contents).
			self changed: #listElementAt: ].
