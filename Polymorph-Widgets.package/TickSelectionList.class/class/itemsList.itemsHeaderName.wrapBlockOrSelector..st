instance creation
itemsList: itemsList itemsHeaderName: aName wrapBlockOrSelector: wrapBlockOrSelector

	^ self basicNew
		wrapBlockOrSelector: wrapBlockOrSelector;
		initialize;
		itemsList: itemsList;
		itemsHeaderName: aName;
		yourself