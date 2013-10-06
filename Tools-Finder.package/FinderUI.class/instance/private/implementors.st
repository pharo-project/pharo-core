implementors

	self selectedMethod ifNotNil: [ :selector |
 		SystemNavigation new 
			browseImplementorsOf: selector 
			name: 'Implementors of ', selector asString 
			autoSelect: nil]