initialization
unload
	(PluggableTextMorph respondsTo: #stylingClass:)
		ifTrue: [ PluggableTextMorph stylingClass: nil ]
	