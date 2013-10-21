removeFromHistory: aNautilusHistoryEntry

	self browsingHistory removeEntry: aNautilusHistoryEntry.
	self triggerEvent: #historyChanged