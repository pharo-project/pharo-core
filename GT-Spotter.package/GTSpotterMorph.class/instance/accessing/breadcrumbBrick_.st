breadcrumbBrick: aBrick

	breadcrumbBrick ifNotNil: [self removeBrick: breadcrumbWrapperBrick].
	breadcrumbBrick := aBrick.
	
	breadcrumbBrick announcer subscribe: GTSpotterBreadcrumbVisibilityChanged send: #onBreadcrumbVisibilityChanged to: self.
	
	self theme spotterWidgetThemer breadcrumbStyleFor: breadcrumbBrick.
	
	breadcrumbWrapperBrick := GLMBandBrick new.
	breadcrumbWrapperBrick addBrickBack: breadcrumbBrick.
	self addBrickBack: breadcrumbWrapperBrick