mouseDown: event
	| hl |
	
	self editView ifNotNil: [self editView mouseDownFromTextMorph: event].
	
	super mouseDown: event.
	
	self flag: #hack.
	(self editView respondsTo: #highlights)
		ifTrue: [
			hl := self editView highlights
				detect: [ :h |
					h containsPoint: event position
					in: (self bounds: self editView innerBounds from: self) ]
				ifNone: [ ^ self ].
			hl clicked: event]
