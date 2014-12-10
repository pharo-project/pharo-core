initialize
	super initialize.
	self enable.
	
	self theme spotterWidgetThemer itemNormalStyleFor: self.
	
	self iconBrick: self newIconBrick.
	self labelBrick: self newLabelBrick.
	self actionbarBrick: self newActionbarBrick.