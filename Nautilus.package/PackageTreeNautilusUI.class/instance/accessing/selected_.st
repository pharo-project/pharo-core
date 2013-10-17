selected: aNode
	| selection |
	
	self clearPackageSelections.
	self resetShowHierarchy.
	
	selection := aNode selectedNodes do: [ :each |
		self selectedPackageWithoutChangingSelection: each asNautilusSelection ].
	
	self changed: #selected.
	self changed: #currentHistoryIndex.
