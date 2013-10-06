interpretASpec: aSpec model: aModel selector: aSelector
	
	^ self
		interpretASpec: aSpec
		model: aModel
		superSpec: NullObjectSpec new
		selector: aSelector