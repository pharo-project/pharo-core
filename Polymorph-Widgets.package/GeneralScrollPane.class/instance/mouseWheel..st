*Polymorph-Widgets
mouseWheel: event 
	"Handle a mouseWheel event."
	
	(self scrollTarget handlesMouseWheel: event)
		ifTrue: [^self scrollTarget mouseWheel: event]. "pass on"
	event direction = #up ifTrue: [
		vScrollbar scrollUp: 3].
	event direction = #down ifTrue: [
		vScrollbar scrollDown: 3]