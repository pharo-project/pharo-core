removeLastHistoryEntry

	self browsingHistory removeLastEntry.
	self triggerEvent: #historyChanged