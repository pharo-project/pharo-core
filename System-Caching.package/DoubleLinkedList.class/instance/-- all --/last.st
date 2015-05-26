last
	self isEmpty 
		ifTrue: [ CollectionIsEmpty signalWith: self ].
	^ tail value