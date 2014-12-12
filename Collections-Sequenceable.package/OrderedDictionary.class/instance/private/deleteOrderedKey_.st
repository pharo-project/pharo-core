deleteOrderedKey: aKey
	| index |

	index := self indexOfKey: aKey ifAbsent: [^ self].
	orderedKeys
		replaceFrom: index
		to: self size - 1
		with: orderedKeys
		startingAt: index + 1.
	orderedKeys at: self size put: nil.