testing
includesKey: aKey
	"Answer whether the receiver has a key equal to aKey."

	^ (self findIndexFor: aKey) ~= 0