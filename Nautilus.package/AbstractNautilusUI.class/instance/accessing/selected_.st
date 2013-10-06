selected: anInteger
	| selection |
	
	list2Elements := nil.
	selection := self getList at: anInteger ifAbsent: [nil].
	self 
		ifGroups: [ self selectedGroupWithoutChangingSelection: selection ]
		ifNot: [ self selectedPackageWithoutChangingSelection: selection ].
	
	self changed: #selected.
	self changed: #currentHistoryIndex.