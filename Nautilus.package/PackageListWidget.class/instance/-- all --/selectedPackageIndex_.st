selectedPackageIndex: anInteger
	| selection |
	
	self model resetClassesList.
	selection := self getPackagesList at: anInteger ifAbsent: [nil].
	self model
		ifGroups: [ self model selectedGroupWithoutChangingSelection: selection ]
		ifNot: [ self model selectedPackageWithoutChangingSelection: selection ].
	
	self changed: #selectedPackage.
	self model changed: #currentHistoryIndex.