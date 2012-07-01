displaying
open

	super open.
	window takeKeyboardFocus.
	self giveFocusTo: list.
	self selectedClass ifNotNil: [ self giveFocusTo: list2 ].
	self selectedCategory ifNotNil: [:cat |  
		categoryWidget selectProtocol: cat.
		methodWidget resetMethodCache.
		methodWidget update: #getMethodItem:.
		self giveFocusTo: categoryWidget ].
	self selectedMethod ifNotNil: [:meth | 
		methodWidget selectMethod: meth.
		self giveFocusTo: methodWidget ].
	