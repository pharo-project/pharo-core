initialization
initialize
	super initialize.
	
	lock := Semaphore forMutualExclusion.
	
	self
		setDefaultParameters;
		setProperty: #morphicLayerNumber toValue: self morphicLayerNumber;
		layoutPolicy: TableLayout new;
		listDirection: #topToBottom;
		cellPositioning: #topCenter;
		cellInset: 5;
		listCentering: #center;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		layoutInset: 15@15;
		minWidth: 150