name: aSymbol
	| oldName newName |
	
	oldName := name.
	newName := aSymbol asSymbol.
	
	self renameTagsPrefixedWith: oldName to: newName. 
	name := newName.
	
	oldName ifNotNil: [ 
		SystemAnnouncer uniqueInstance 
			announce: (RPackageRenamed 
				to: self 
				oldName: oldName 
				newName: newName) ].