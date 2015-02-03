initialize
	super initialize.
	
	self
		layout: GLMBrickHorizontalFillLinearLayout new;
		band: self newBand;
		height: [ self items isEmpty ifTrue: [ 0 ] ifFalse: [ self defaultBreadcrumbHeight ] ]
	