removeScrollButton: aButton

	self removeMorph: aButton.
	
	pagerModel size > 0 ifTrue: [ 
		self removeMorph: (self submorphs last).
	]