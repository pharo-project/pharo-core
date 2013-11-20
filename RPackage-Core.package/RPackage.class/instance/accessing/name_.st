name: aSymbol
	| oldName |
	
	oldName := name.
	name := aSymbol asSymbol.
	
	self renameTagsPrefixedWith: oldName to: name. 
	
	oldName ifNotNil: [ 
		SystemAnnouncer uniqueInstance 
			announce: (RPackageRenamed 
				to: self 
				oldName: oldName 
				newName: aSymbol) ]