message list
currentSelector: messageName

	currentSelector := messageName.
	self changed: #currentSelector.
	self setContents.
	self contentsChanged.