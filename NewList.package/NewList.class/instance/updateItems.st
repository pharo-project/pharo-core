updating
updateItems

	self isInitialized ifFalse: [ ^ self ].

	listCache contents: self retrieveItems