mouseWheel: event 
	"Handle a mouseWheel event."
	
	(self scrollTarget handlesMouseWheel: event)
		ifTrue: [^self scrollTarget mouseWheel: event]. "pass on"