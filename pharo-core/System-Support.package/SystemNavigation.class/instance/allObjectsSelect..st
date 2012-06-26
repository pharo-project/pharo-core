query
allObjectsSelect: aBlock 
	"Evaluate the argument, aBlock, for each object in the system excluding 
	SmallIntegers. Return a collection af all objects for whom the value is 
	true. "
	^ Array
		streamContents: [:s | self
				allObjectsDo: [:object | (aBlock value: object)
						ifTrue: [s nextPut: object]]]