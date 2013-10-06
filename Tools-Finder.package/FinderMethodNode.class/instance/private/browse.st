browse
	self item isSymbol	ifTrue: [ 	
		^ SystemNavigation new 
			browseImplementorsOf: self item
			name: 'Implementors of ', self item asString 
			autoSelect: nil ].
	self item browse.