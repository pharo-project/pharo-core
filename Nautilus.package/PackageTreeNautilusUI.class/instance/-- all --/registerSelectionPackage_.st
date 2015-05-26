registerSelectionPackage: aSelection

	self model 	
		package: aSelection
		class: self selectedClass 
		category: nil 
		method: nil.
		
	self packageWidget selectPackage: aSelection item.