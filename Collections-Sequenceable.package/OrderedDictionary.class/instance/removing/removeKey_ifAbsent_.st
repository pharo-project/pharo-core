removeKey: aKey ifAbsent: aBlock
	(self includesKey: aKey)
		ifTrue: [orderedKeys remove: aKey].
	^ dictionary removeKey: aKey ifAbsent: aBlock.