first
	self isEmpty 
		ifTrue: [ CollectionIsEmpty signalWith: self ].
	^ head value