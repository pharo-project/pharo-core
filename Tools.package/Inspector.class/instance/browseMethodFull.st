menu commands
browseMethodFull

	self selectedClassOrMetaClass 
		ifNotNil: [:selectedClass | SystemNavigation new browseClass: selectedClass]