requirements
collectionWithIdentical
	"return a collection of type : 'self collectionWIithoutEqualsElements class containing two elements equals ( with identity equality)"
	| result collection element |
	collection := OrderedCollection withAll: self elementsCopyNonIdenticalWithoutEqualElements.
	element := collection first.
	collection add: element.
	result := self elementsCopyNonIdenticalWithoutEqualElements class withAll: collection.
	^ result