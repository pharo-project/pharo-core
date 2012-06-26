instance creation
item: item selected: selected wrapBlockOrSelector: wrapBlockOrSelector

	^ self basicNew
		wrapBlockOrSelector: wrapBlockOrSelector;
		initialize;
		item: item;
		selected: selected;
		yourself