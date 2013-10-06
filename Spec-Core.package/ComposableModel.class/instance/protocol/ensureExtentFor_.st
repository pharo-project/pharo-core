ensureExtentFor: widget

	self extent
		ifNotNil: [ :ex | 
			(widget respondsTo: #extent:)
				ifTrue: [ widget extent: ex ] ].
	self initialExtent
		ifNotNil: [ :ex | 
			(widget respondsTo: #extent:)
				ifTrue: [ widget extent: ex ] ]