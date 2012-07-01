misc
getSelectorAndSendQuery: querySelector to: queryPerformer
	"Obtain a selector relevant to the current context, and then send the querySelector to the queryPerformer with the selector obtained as its argument.  If no message is currently selected, then obtain a method name from a user type-in"

	self getSelectorAndSendQuery: querySelector to: queryPerformer with: { }.
