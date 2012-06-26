instance creation
item: item wrapBlockOrSelector: wrapBlockOrSelector

	^ self basicNew
		wrapBlockOrSelector: wrapBlockOrSelector;
		initialize;
		item: item;
		yourself