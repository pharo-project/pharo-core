createNotifierPaneWidgets

	self instantiateModels: self buildNotifierPaneWidgetsSpec.
	(self widgets keys includes: #codePane) ifTrue: [ 
		(self widgets at: #codePane) beForCode.
	].
	self widgets keysDo: [ :key | 
		(self perform: ('initialize', key asString capitalized) asSymbol) ]