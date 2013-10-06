getDisplayList

	sortingList ifNotNil: [ ^ sortingList ].
	^ sortingList := {
		 self byClassItem.
		 self byVersionItem.
		 self byDateAscendingItem.
		 self byDateDescendingItem.
		 self byPackageItem.	}
