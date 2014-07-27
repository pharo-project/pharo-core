selected: anInteger
	| selection |
	
	self resetClassesList.
	selection := self getList at: anInteger ifAbsent: [nil].
	self 
		ifGroups: [ self selectedGroupWithoutChangingSelection: selection ]
		ifNot: [ self selectedPackageWithoutChangingSelection: selection ].
	
	self changed: #selected.
	self changed: #currentHistoryIndex.