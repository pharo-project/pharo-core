protocol
buildWithSpec: aSpec
	"Build the widget using the spec name provided as argument"

	^ SpecInterpreter buildMorphFor: self withSpec: aSpec