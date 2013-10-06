testindexOfstartingAt

	self assert: ('aa aa יי aa aa' indexOf: $a startingAt: 8) = 10.
	self assert: ('aa aa יי aa aa' indexOf: $z startingAt: 8) = 0.