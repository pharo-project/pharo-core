browseImplementors
	
	self item ifNotNil: [ :method | | selector |
				selector := method selector.
		 		SystemNavigation new 
					browseImplementorsOf: selector 
					name: 'Implementors of ', selector asString 
					autoSelect: nil]