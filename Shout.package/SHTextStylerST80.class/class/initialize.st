initialization
initialize
	"self initialize"
	styleTable := nil.
	textAttributesByPixelHeight := nil.
	(PluggableTextMorph respondsTo: #stylingClass:)
		ifTrue: [ PluggableTextMorph stylingClass: self ]