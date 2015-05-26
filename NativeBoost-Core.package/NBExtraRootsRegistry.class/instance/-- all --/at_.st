at: aName

	"Answer an object associated with given name."
	| index |
	index := pool at: aName.
	^ array at: index