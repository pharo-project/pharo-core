browseSenders
	"Browse the method senders."

	self systemNavigation
		browseAllCallsOn: (self selectedMessageName ifNil: [^self])