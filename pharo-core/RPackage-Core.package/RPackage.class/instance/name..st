accessing
name: aSymbol

	| oldName |
	oldName := name.
	name := aSymbol asSymbol.
	oldName ifNotNil: [ SystemAnnouncer current announce: 
							(RPackageRenamed 
									to: self 
									oldName: oldName 
									newName: aSymbol) ]