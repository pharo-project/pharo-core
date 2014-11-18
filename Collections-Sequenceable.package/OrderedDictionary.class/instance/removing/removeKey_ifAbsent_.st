removeKey: aKey ifAbsent: aBlock
	| keyIndex |

	keyIndex := self indexOfKey: aKey ifAbsent: [^ aBlock value].
	orderedKeys
		replaceFrom: keyIndex
		to: self size - 1
		with: orderedKeys
		startingAt: keyIndex + 1.
	orderedKeys at: self size put: nil.
	^ dictionary removeKey: aKey.