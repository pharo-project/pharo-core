updating
updateHeaderTitle

	self isInitialized ifFalse: [ ^ self ].

	headerTitle contents: self retrieveHeaderTitle.