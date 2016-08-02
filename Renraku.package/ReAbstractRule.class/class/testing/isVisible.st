isVisible
	
	^ self methodOfInteresetSelectors anySatisfy: [ :selector |
		self perform: selector ]