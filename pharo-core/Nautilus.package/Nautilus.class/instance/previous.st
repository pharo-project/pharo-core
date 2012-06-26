history
previous

	self adopt: self browsingHistory previous.
	self triggerEvent: #historyChanged.