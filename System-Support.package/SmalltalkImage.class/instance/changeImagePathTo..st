image, changes names
changeImagePathTo: aString
	
	self imagePath: aString asSqueakPathName.
	LastImagePath := self imagePath