initialize

	descriptionHolder := nil asValueHolder.
	textBindings := Dictionary new.
	super initialize.
	
	self announcer
		on: WidgetBuilt send: #widgetBuilt to: self