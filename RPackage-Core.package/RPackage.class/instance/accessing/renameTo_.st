renameTo: aSymbol
	| oldName newName |
	
	oldName := self name.
	newName := aSymbol asSymbol.
	
	self name: aSymbol.
	self renameTagsPrefixedWith: oldName to: newName. 
	self renameExtensionsPrefixedWith: oldName to: newName.
	
	self organizer 
		basicUnregisterPackageNamed: oldName;
		basicRegisterPackage: self.
	
	SystemAnnouncer uniqueInstance 
		announce: (RPackageRenamed 
			to: self 
			oldName: oldName 
			newName: newName).