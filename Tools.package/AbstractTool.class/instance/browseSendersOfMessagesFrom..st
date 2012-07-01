method
browseSendersOfMessagesFrom: aSelector
	"Present a menu of the currently selected message, as well as all messages sent by it.  Open a message set browser of all senders of the selector chosen."

	self getSelectorAndSendQuery: #browseAllCallsOn: to: self systemNavigation with: {} selector: aSelector