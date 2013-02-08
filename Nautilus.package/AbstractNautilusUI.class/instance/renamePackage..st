private
renamePackage: anRPackage

	| isCurrent |
	isCurrent := anRPackage = self selectedPackage.
	super renamePackage: anRPackage.	
	isCurrent ifTrue: [ self selectedPackage: anRPackage ].
	packagesSelection at: anRPackage put: true.