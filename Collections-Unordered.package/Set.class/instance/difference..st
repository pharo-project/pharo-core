enumerating
difference: aCollection
	"Answer the set theoretic difference of two collections. 
	Optimized version for Sets where no intermediate Set is necessary"

	| set|
	
	set := self copy.
	aCollection do: [ :each|
		set remove: each ifAbsent: []].
	
	^ set