initialize-release
unregister
	eventFetcher
		ifNotNil: [eventFetcher unregisterHandler: self]