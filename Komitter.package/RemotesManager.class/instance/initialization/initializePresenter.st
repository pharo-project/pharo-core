initializePresenter

	packages whenSelectedItemChanged: [ :item |	self updateRemoteSelectionFrom: item ].
	remotes whenHighlightedItemChanged: [ :item | 
		editRemote enabled: item notNil.
		removeRemote enabled: item notNil ]