actions
addMethodReference: aMethodReference at: index

	self addMethodReferenceSilently: aMethodReference at: index.
	self updateView.