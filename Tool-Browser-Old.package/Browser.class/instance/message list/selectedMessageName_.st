selectedMessageName: aSelector
	"Make the given selector be the selected message name"

	| anIndex |
	anIndex := self messageList indexOf: aSelector.
	anIndex > 0 ifTrue:
		[self messageListIndex: anIndex]