message list
currentSelector: index

	currentSelector := self messageList at: index ifAbsent: [ nil ].
	self changed: #currentSelector.
	self setContents.
	self contentsChanged.