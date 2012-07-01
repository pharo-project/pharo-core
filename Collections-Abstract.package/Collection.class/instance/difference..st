enumerating
difference: aCollection
	"Answer the set theoretic difference of two collections."

	| set|
	
	set := self asSet.
	aCollection do: [ :each|
		set remove: each ifAbsent: []].
	
	^ self species withAll: set asArray