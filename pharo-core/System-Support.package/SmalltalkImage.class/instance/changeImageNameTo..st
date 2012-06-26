image, changes names
changeImageNameTo: aString
	
	self imageName: aString asSqueakPathName.
	LastImageName := self imageName