updating
updateListSize

	self isInitialized ifFalse: [ ^ self ].

	listSize contents: self retrieveListSize