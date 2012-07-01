accessing
renameSelector: newSelector andArguments: varNodeCollection 
	| oldSelectorParts oldArguments |
	oldSelectorParts := selectorParts.
	oldArguments := arguments.
	self
		arguments: varNodeCollection;
		selector: newSelector.
	self changeSourceSelectors: oldSelectorParts arguments: oldArguments