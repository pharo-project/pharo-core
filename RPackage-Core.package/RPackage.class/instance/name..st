accessing
name: aSymbol

	| oldName |
	oldName := name.
	name := aSymbol asSymbol.
	oldName ifNotNil: [ 
		SystemAnnouncer uniqueInstance 
			announce: (RPackageRenamed 
				to: self 
				oldName: oldName 
				newName: aSymbol) ]