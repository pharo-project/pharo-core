accept: aText notifying: aNotifyier
	| accept |
	
	accept := actionToPerformHolder contents cull: aText cull: aNotifyier.
	accept == false ifTrue: [ ^ self ].
	
	textHolder contents: aText.
	
	"Dummy changed to raise an announcement"
	actionPerformedHolder contents: aText.
	
	self changed: #clearUserEdits.