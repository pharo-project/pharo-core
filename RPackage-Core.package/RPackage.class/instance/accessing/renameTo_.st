renameTo: aSymbol
	| oldName newName oldCategoryNames |

	oldName := self name.
	newName := aSymbol asSymbol.
	
	(self organizer includesPackageNamed: aSymbol)
		ifTrue: [  RPackageConflictError  signal: ('A package named {1} already exists' format: { aSymbol }) ].

	oldCategoryNames  := (self classTags collect: #categoryName as: Set) 
		add: self categoryName;
		yourself.
	self name: aSymbol.
	SystemAnnouncer uniqueInstance suspendAllWhile: [
		self classes do: [ :each | each category: newName, (each category allButFirst: oldName size) ].
		oldCategoryNames do: [ :each | SystemOrganizer default removeCategory: each ] ].
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