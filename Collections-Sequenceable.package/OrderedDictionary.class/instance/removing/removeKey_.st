removeKey: aKey
	^ self removeKey: aKey ifAbsent: [defaultValue]