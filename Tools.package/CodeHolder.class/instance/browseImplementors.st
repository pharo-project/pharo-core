commands
browseImplementors
	"Create and schedule a message set browser on all implementors of the currently selected message selector. Do nothing if no message is selected."

	| aMessageName |
	(aMessageName := self selectedMessageName) ifNotNil: 
		[self systemNavigation browseAllImplementorsOf: aMessageName]