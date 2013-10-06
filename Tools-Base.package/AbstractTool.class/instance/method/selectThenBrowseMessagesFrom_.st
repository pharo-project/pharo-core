selectThenBrowseMessagesFrom: aSelector
	" badly named, it browses implementors "

	self selectThenGetSelectorAndSendQuery: #browseAllImplementorsOf: to: self systemNavigation with: {} selector: aSelector