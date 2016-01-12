iconSelectorBase64: aSelector
	self initializeIconWith: [ 
		self iconBase64: (self provider perform: aSelector) ]