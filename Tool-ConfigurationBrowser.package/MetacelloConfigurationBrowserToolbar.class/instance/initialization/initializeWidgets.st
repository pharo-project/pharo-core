initializeWidgets
	
	loadModel := self newButton.
	installModel := self newButton.
		
	self setLoadModel.
	self setInstallModel.
		
	self focusOrder
		add: loadModel;
		add: installModel