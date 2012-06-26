accessing method dictionary
removeSelector: selector
	self pureRemoveSelector: selector.
	self notifyUsersOfChangedSelector: selector.