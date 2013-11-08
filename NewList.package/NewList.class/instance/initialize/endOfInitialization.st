endOfInitialization

	isInitialized value: true.

	self updateItems.
	self updateDisplayListCache.
	self updateListSize.
	self updateHeaderTitle.
	self updateHeaderHeight.
	self updateAllowToSelect.
	
	self updateRenderer.
	
	selectedItem value: self retrieveSelectedItem.
	selectedItems value: self retrieveSelectedItems.
	
	listCache whenChangedDo: [:e |
			listSize value: e size.
			self updateDisplayListCache.
			self unselectOnChange
				ifTrue: [ self deselectAll ].
			self updateScrollbars ].
	listSize whenChangedDo: [:e | self updateRenderer ].
	headerTitle whenChangedDo:[:e | self updateHeaderHeight ].
	secondSelection whenChangedDo: [:idx | 
		self setViewToIndex: idx. 
		self renderer updateRectFor: idx ].
	selectedIndex whenChangedDo: [:newIndex :oldIndex | 
		selectedItem value: self retrieveSelectedItem.
		self renderer updateRectFor: oldIndex. ].
	selectedIndexes whenChangedDo: [:newIndex :oldIndex | selectedItems value: self retrieveSelectedItems ].
	headerTitle whenChangedDo: [:t | self renderer invalidHeader ].