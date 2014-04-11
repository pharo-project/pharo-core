at: key
	"If key is present in the cache, return the associated value.
	This is a hit and makes that key/value pair the most recently used.
	If key is absent, use the factory to compute a new value and cache it.
	This is a miss and will create a new key/value pair entry.
	Furthermore this could result in the least recently used key/value pair 
	being removed when the specified maximum cache weight is exceeded.
	A factory is required for this behavior."
	
	^ self 
		at: key 
		ifAbsentPut: (factory ifNil: [ self error: 'No factory specified' ])