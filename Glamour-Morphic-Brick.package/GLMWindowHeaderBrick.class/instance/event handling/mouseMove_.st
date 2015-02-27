mouseMove: evt
	|delta|
	super mouseMove: evt.
	
	startDragging ifNil: [ ^ self ].
	
	delta := startDragging - evt position.
	self window topLeft: (startDraggingOrigin - delta)