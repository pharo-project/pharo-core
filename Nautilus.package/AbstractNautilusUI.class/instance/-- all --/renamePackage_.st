renamePackage: aPackage
	| isCurrent |
	isCurrent := self isSelectedPackage: aPackage.
	super renamePackage: aPackage.	
	isCurrent ifTrue: [ self selectedPackage: aPackage ].
	self packageWidget selectPackage: aPackage.