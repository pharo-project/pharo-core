arrowUp: aMethod
	| newMethod |
	newMethod := aMethod methodClass superclass lookupSelector: aMethod selector.
	newMethod
		ifNil: [ self methodWidget invalidateCacheEntryFor: aMethod ]
		ifNotNil: [ self model class openOnMethod: newMethod ]