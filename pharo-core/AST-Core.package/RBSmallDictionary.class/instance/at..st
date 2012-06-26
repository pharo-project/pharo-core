accessing
at: aKey
	"Answer the value associated with aKey. Raise an exception, if no such key is defined."

	^ self at: aKey ifAbsent: [ self errorKeyNotFound ]