buildWidget

	widget := super buildWidget.
	widget model: self container.
	widget nodeModel: self model.
	
	^ widget