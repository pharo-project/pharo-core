mouseWheel: event
	event direction = #up ifTrue: [
		layoutViewMorph scrollBy: 0@ (layoutViewMorph height/10) negated.
		  ].
	event direction = #down ifTrue: [ 
		layoutViewMorph scrollBy: 0@ (layoutViewMorph height/10).
	  ].
	
	self updateCursor: false.