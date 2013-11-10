buildWithSpecLayout: aSpecLayout
	"Build the widget using the spec name provided as argument"
	| widget |
	
	widget := SpecInterpreter interpretASpec: aSpecLayout model: self.
	widget := widget asWidget.
	
	self announce: (WidgetBuilt model: self widget: widget).
	
	^ widget