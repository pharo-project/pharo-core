removing
removeKey: aKey
	"Remove aKey from the receiver, raise an exception if the element is missing."

	^ self removeKey: aKey ifAbsent: [ self errorKeyNotFound ]