getAndRemoveInvisibleMorph: aCollection
	|brick|
	brick := self retrieveLast: aCollection.
	^ brick ifNotNil: [ self removeBrick: brick. brick morph ]