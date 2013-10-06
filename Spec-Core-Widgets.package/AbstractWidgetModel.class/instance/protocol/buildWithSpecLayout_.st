buildWithSpecLayout: aSpecLayout
	"Build the widget using the spec name provided as argument"
	| adapter widget |
	
	adapter := SpecInterpreter interpretASpec: aSpecLayout model: self.
	widget := adapter widget.
	
	self ensureExtentFor: widget.
	self ensureKeyBindingsFor: widget.
	
	self announce: (WidgetBuilt model: self widget: widget).
	
	^ widget