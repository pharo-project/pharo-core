commands
browseSenders
	"Create and schedule a message set browser on all senders of the currently selected message selector.  Of there is no message currently selected, offer a type-in"

	self sendQuery: #browseAllCallsOn: to: self systemNavigation