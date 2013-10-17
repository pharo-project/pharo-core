renameWithPackagePrefixTo: aString 
	self renameTo: (self packageName, '-', aString).