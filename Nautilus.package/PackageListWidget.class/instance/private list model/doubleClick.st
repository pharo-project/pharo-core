doubleClick

	self model
		ifGroups: [ self model doubleClickOnGroup ]
		ifNot: [ self model doubleClickOnPackage ]