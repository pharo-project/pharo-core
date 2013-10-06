accept: aText

	textHolder contents: aText.
	actionToPerformHolder contents cull: aText.
	
	"Dummy changed to raise an announcement"
	actionPerformedHolder contents: aText.
	self changed: #clearUserEdits.