meta-actions
resizeMorph: evt
	| handle |
	handle := HandleMorph new forEachPointDo: [:newPoint | 
		self extent: (self griddedPoint: newPoint) - self bounds topLeft].
	evt hand attachMorph: handle.
	handle startStepping.
