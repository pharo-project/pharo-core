removeFirst
	| link |
	self isEmpty 
		ifTrue: [ CollectionIsEmpty signalWith: self ].
	link := head.
	head := head nextLink.
	head 
		ifNil: [ tail := nil ]
		ifNotNil: [ head previousLink: nil ].
	link clearLinks.
	^ link