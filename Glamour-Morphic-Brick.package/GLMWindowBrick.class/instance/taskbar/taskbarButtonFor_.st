taskbarButtonFor: aTaskbar
	"Answer a new task bar button for the receiver.
	Answer nil if not required."
	|button|
	button := GLMTaskbarButtonBrick new for: self taskbar: aTaskbar.
	button height: 24.
	button doLayoutForce.
	
	^ button
		asBrickedMorph
			extent: button width @ 24