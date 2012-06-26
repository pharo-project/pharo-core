history
next

	self adopt: self browsingHistory next.
	self triggerEvent: #historyChanged.