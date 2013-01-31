protocol
buildWithSpec: aSpec
	"Build the widget using the spec name provided as argument"
	| widget |
	
	widget := SpecInterpreter buildMorphFor: self withSpec: aSpec.

	self ensureExtentFor: widget.
		
	^ widget