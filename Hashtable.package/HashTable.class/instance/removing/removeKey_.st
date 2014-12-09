removeKey: aKey
	^self removeKey: aKey ifAbsent: [ self errorKeyNotFound ]