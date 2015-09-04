registerSelectionPackage: aSelection

	self model 	
		package: aSelection
		class: self selectedClass.
		
	self packageWidget selectPackage: aSelection item.