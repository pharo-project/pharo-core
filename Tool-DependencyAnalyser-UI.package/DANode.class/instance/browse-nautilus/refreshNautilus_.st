refreshNautilus: nautilus

	| nautilusUI |
	nautilusUI := self rootNode packageTreeNautilusUI.
	nautilusUI updatePackageGroupAndClassList.