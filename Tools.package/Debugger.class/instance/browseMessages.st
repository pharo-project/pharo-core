context stack menu
browseMessages
	"Present a menu of all messages sent by the currently selected message.
	Open a message set browser of all implementors of the message chosen.
	Do nothing if no message is chosen."

	contextStackIndex = 0 ifTrue: [^ self].
	super browseMessages.