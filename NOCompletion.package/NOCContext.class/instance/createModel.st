model creation
createModel
	| mdl |		
	mdl := NOCModel
		class: theClass
		temporaries: self temporaries
		additionals: controller additionals
		variables: variables
		selectors: selectors.
	controller expanded ifTrue: [mdl expand].
	^ mdl 