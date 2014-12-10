buildPane: aStepModel
	|pane|
	
	pane := GTSpotterResultsBrick new stepModel: aStepModel.
	self theme spotterWidgetThemer resultsPaneStyleFor: pane.
	^ pane