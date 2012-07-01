instance creation
itemsList: itemsList itemsHeaderName: aName wrapBlockOrSelector: wrapBlockOrSelector defaultValue: defaultValue

	^ self basicNew
		wrapBlockOrSelector: wrapBlockOrSelector;
		defaultValue: defaultValue
		initialize;
		itemsList: itemsList;
		itemsHeaderName: aName;
		yourself