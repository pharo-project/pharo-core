protocol
buildWithSpecLayout: aSpecLayout
	"Build the widget using the spec name provided as argument"
	| widget |
	
	widget := SpecInterpreter new interpretASpec: aSpecLayout model: self.
		
	self ensureExtentFor: widget.
	self ensureKeyBindingsFor: widget.
	
	self announce: (WidgetBuilt model: self widget: widget).
	
	^ widget