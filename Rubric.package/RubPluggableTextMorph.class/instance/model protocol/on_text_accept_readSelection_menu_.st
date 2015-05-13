on: aModel text: aGetTextSelector accept: aSetTextSelector readSelection: aReadSelectionSelector menu: aGetMenuSelector
	self getTextSelector: aGetTextSelector.
	self setTextSelector: aSetTextSelector.
	self getSelectionSelector: aReadSelectionSelector.
	self getMenuSelector: aGetMenuSelector.
	self on: aModel