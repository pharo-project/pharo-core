running
assertSerializationEqualityOfAll: aCollection
	"Asserts that the original collection and the materialized one are equal (but not the same) element by element"

	aCollection do: [ :anObject | self assertSerializationEqualityOf: anObject ]