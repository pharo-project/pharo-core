removeAllPackages
	packages removeAll.
	GroupAnnouncer uniqueInstance announce: (AGroupContentHasBeenModified group: self)