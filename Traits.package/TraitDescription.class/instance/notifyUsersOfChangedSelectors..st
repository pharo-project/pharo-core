users notification
notifyUsersOfChangedSelectors: aCollection
	self users do: [:each |
		each noteChangedSelectors: aCollection]