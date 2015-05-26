applyFilterWithoutQuery
	" WARNING: this is not a copy of GTNullFilter>>#applyFilterWithoutQuery !!! "
	self streamed 
		ifTrue: [
			" this will be more responsive (faster) for very large collections and/or expensive filters "
			| reducedItems |
			self items: (reducedItems := OrderedCollection new).
			self allItems withIndexDo: [ :each :index |
				index <= self itemsLimit ifTrue: [ 
					reducedItems add: each.
					self addItem: each ] ] ]
		ifFalse: [
			" this will be much much faster for small collections and/or very quick filters " 
			self items: (self allItems first: (self itemsLimit min: self allItems size)).
			self addItems: self items ]