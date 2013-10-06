addClassNamed: name categorized: category

	addClassDescription := AddClassDescription
								category: category
								name: name.
								
	self addMethodWithSource: 'initialize
	
	super initialize' category: 'initialize'.