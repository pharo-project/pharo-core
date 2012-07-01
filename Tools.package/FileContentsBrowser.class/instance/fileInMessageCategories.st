filein/fileout
fileInMessageCategories
	Cursor read showWhile:[
		self selectedClassOrMetaClass fileInCategory: self selectedMessageCategoryName.
	].