applyFilterWithQuery
	self items: self allItems.
	self addItems: (self allItems first: (self itemsLimit min: self allItems size))