applyFilterWithQuery
	self streamed 
		ifTrue: [
			" this will be more responsive (faster) for very large collections and/or expensive filters "
			| allItems |
			self items: (allItems := OrderedCollection new).
			self allItems withIndexDo: [ :each :index |
				allItems add: each.
				index <= self itemsLimit ifTrue: [ 
					self addItem: each ] ] ]
		ifFalse: [
			" this will be much much faster for small collections and/or very quick filters " 
			self items: self allItems.
			self addItems: (self allItems first: (self itemsLimit min: self allItems size)) ]