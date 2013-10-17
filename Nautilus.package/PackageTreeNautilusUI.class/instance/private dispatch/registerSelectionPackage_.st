registerSelectionPackage: aSelection

	self model 	
		package: aSelection
		class: self selectedClass 
		category: nil 
		method: nil.
		
	packagesSelection 
		at: aSelection item 
		put: true.