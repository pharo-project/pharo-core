showing
traverse: anEntry 
	self pushVisit: anEntry.
	anEntry isDirectory ifTrue: 
		[anEntry reference entries reverseDo: 
			[:ea | self pushTraverse: ea]]