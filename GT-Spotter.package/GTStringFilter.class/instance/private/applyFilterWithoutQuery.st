applyFilterWithoutQuery
	self items: (self allItems first: (self itemsLimit min: self allItems size)).
	self addItems: self items