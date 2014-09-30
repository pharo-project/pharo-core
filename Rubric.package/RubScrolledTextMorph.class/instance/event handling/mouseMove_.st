mouseMove: event
	"If pane is not empty, pass the event to the last submorph,
	assuming it is the most appropriate recipient (!)"
	
	self scrollPane mouseMove: event.
	self eventHandler
		ifNotNil: [ self eventHandler mouseMove: event fromMorph: self ]