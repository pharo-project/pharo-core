browseImplementors
	
	self item ifNotNil: [ :selector |
		 		SystemNavigation new 
					browseImplementorsOf: selector 
					name: 'Implementors of ', selector
					autoSelect: nil]