testContextForNautilusItsANautilusContext
	| nautilus |
	
	nautilus := PackageTreeNautilusUI new.
	self assert: (SugsAbstractContext contextFor: nautilus) class equals: SugsNautilusContext.