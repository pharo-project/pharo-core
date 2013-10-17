renamePackage: aPackage
	| isCurrent |
	isCurrent := self isSelectedPackage: aPackage.
	super renamePackage: aPackage.	
	isCurrent ifTrue: [ self selectedPackage: aPackage ].
	packagesSelection at: aPackage put: true.