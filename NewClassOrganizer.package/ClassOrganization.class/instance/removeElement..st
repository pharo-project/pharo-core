backward compatibility
removeElement: aSymbol
	| oldCat |
	
	oldCat := self categoryOfElement: aSymbol.
	self protocolOrganizer removeMethod: aSymbol.
	self notifyOfChangedSelector: aSymbol from: oldCat to: (self categoryOfElement: aSymbol).