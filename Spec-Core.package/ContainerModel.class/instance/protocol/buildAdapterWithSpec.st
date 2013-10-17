buildAdapterWithSpec
	"Build the widget using the spec name provided as argument"
	| adapter widget aSpecLayout |
	
	aSpecLayout := (self retrieveSpec: self defaultSpecSelector).
	adapter := SpecInterpreter interpretASpec: aSpecLayout model: self.
	widget := adapter widget.
	
	self ensureExtentFor: widget.
	self ensureKeyBindingsFor: widget.
	
	self announce: (WidgetBuilt model: self widget: widget).
	
	^ adapter