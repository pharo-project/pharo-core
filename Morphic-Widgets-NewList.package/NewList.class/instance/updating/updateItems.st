updateItems

	self isInitialized ifFalse: [ ^ self ].

	listCache value: self retrieveItems