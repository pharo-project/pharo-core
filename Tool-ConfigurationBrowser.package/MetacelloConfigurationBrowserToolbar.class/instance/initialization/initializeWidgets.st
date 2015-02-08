initializeWidgets
	
	self instantiateModels: #(
		loadModel  		ButtonModel
		installModel      ButtonModel).
		
	self setLoadModel.
	self setInstallModel.
		
	self focusOrder
		add: loadModel;
		add: installModel