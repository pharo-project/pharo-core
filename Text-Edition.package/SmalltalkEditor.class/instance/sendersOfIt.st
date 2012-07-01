menu messages
sendersOfIt
	"Open a senders browser on the selected selector"

	| selectedSelector |
	self lineSelectAndEmptyCheck: [^ self].
	selectedSelector  := self selectedSelector.
	selectedSelector isNil ifTrue: [^ morph flash].
	self sendersOf: selectedSelector