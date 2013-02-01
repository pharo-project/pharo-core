communication with model
retrieveListSize
	| size |
	
	size := self model getListSize.
	^ (size == -1)
		ifTrue: [ listCache size ]
		ifFalse: [ size ]