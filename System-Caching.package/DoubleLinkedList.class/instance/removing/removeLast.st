removeLast
	| link |
	self isEmpty 
		ifTrue: [ CollectionIsEmpty signalWith: self ].
	link := tail.
	tail := tail previousLink.
	tail 
		ifNil: [ head := nil ]
		ifNotNil: [ tail nextLink: nil ].
	link clearLinks.
	^ link