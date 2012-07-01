accessing method dictionary
addSelectorSilently: selector withMethod: compiledMethod
	self pureAddSelectorSilently: selector withMethod: compiledMethod.
	self notifyUsersOfChangedSelector: selector.