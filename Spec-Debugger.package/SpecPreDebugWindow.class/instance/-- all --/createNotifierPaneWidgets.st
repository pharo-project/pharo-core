createNotifierPaneWidgets

	self instantiateModels: self buildNotifierPaneWidgetsSpec.
	self widgets keysDo: [ :key | 
		(self perform: ('initialize', key asString capitalized) asSymbol) ]