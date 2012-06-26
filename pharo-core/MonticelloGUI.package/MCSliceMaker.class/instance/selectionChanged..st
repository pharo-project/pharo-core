selecting
selectionChanged: aSelectionChangedAnnounce
	| allManagers selectedPackages sel |
	allManagers := MCWorkingCopy allManagers.
	sel := aSelectionChangedAnnounce selection selectedItemOrItemsOrNil.
	selectedPackages := sel
				ifNil: [#()]
				ifNotNil: [sel
						collect: [:n | allManagers 
								detect: [:m | m = n]]].
	self info
		includedPackages: selectedPackages.
	self changed: #okUnabled