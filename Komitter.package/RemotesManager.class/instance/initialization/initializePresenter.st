initializePresenter

	packages whenSelectedItemChanged: [ :item |	self updateRemoteSelectionFrom: item ].
		
	remotes whenHighlightedItemChanged: [ :item | 
		editRemote enabled: item notNil.
		removeRemote enabled: item notNil ].
	
	packages whenRootsChanged: [ :nodes | 
		nodes ifNotEmpty: [ nodes first takeHighlight ] ].
	
	self whenBuiltDo: [ | nodes |
		nodes := packages roots.
		nodes ifNotEmpty: [
			packages selectedItem: (
			nodes first 
				selected: true;
				takeHighlight;
				yourself ) ] ]