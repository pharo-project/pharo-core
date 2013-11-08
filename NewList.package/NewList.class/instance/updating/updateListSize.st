updateListSize

	self isInitialized ifFalse: [ ^ self ].

	listSize value: self retrieveListSize