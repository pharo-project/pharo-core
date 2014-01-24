initialize

	super initialize.
	index := 0 asReactiveVariable.
	selection := nil asReactiveVariable.
	
	index whenChangedSend: #valueChanged to: self.
	selection whenChangedSend: #valueChanged to: self.