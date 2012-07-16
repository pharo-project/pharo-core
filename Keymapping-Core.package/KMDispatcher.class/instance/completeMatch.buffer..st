match
completeMatch: aKeymapEntry buffer: aBuffer
	KMLog log: 'Complete match: ', aKeymapEntry printString.
	KMBuffer uniqueInstance completeMatch.
	self announcer announce: (KMCompleteMatch event: currentEvent from: self).