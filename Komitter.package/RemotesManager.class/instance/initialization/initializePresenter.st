initializePresenter

	packages whenSelectedItemChanged: [ :item |	self updateRemoteSelectionFrom: item ].
	remotes whenHighlightedItemChanged: [ :item | removeRemote enabled: item notNil ]