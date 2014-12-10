onBreadcrumbVisibilityChanged
	|translate|
	
	translate := 0@self breadcrumbBrick defaultBreadcrumbHeight.
	
	self breadcrumbBrick isVisible	ifTrue: [ translate := translate negated ].
		
	self bounds: (self bounds translateBy: (translate))