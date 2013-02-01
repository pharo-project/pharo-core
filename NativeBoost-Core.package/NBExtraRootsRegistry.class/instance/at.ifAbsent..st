accessing
at: aName ifAbsent: aBlock

	"Answer an object associated with given name."
	| index |
	index := pool at: aName ifAbsent: [ ^ aBlock value ].
	^ array at: index