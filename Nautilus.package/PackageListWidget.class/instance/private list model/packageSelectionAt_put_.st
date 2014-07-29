packageSelectionAt: anIndex put: aBoolean

	| elt |
	elt := self getPackagesList at: anIndex ifAbsent: [ ^ self ].
	packagesSelection at: elt put: aBoolean.
	self model changed: #hasSelectedSelections