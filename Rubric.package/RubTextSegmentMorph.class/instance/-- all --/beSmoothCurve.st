beSmoothCurve
	super beSmoothCurve.
	self textArea ifNotNil: [ self computeVertices ].
