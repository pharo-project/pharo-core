utilties
removeCategory: aSymbol
	| organization |
	organization := self class environment organization.
	(organization classesInCategory: aSymbol)
		do: [ :each | each removeFromSystem ].
	organization removeCategory: aSymbol