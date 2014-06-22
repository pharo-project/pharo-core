updateHeaderTitle

	self isInitialized ifFalse: [ ^ self ].

	headerTitle value: self retrieveHeaderTitle.