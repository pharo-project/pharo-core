event handling
mouseDown: evt
	evt yellowButtonPressed  "First check for option (menu) click"
		ifTrue: [ (self yellowButtonActivity: evt shiftPressed) 
			ifTrue: [ ^ self ]].
	"If pane is not empty, pass the event to the last submorph,
	assuming it is the most appropriate recipient (!)"
	scroller hasSubmorphs ifTrue:
		[scroller submorphs last mouseDown: (evt transformedBy: (scroller transformFrom: self))]