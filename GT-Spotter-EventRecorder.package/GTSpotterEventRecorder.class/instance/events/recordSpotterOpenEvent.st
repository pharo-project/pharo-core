recordSpotterOpenEvent

	self canSendUsageData ifFalse: [ ^ self ].

	self storeEvent: GTSpotterRecorderOpenEvent new