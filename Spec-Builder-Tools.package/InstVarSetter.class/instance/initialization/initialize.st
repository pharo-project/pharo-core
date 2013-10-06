initialize

	descriptionHolder := nil asValueHolder.
	textBindings := Dictionary new.
	super initialize.
	
	self announcer weak
		on: WidgetBuilt send: #widgetBuilt to: self