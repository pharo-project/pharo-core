initialize
	super initialize.
	self initializeListeners.
	
	self theme spotterWidgetThemer spotterStyleFor: self.
	
	self breadcrumbBrick: self newBreadcrumbBrick.
	self contentsBrick: self newContentsBrick.