class list
messageListKey: aChar from: view
	"Respond to a Command key in the message-list pane."

	aChar == $d ifTrue: [^ self forget].
	super messageListKey: aChar from: view