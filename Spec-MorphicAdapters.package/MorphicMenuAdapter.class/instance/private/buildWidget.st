buildWidget

	widget := super buildWidget.
	widget adoptMenuModel: self model.
	
	^ widget