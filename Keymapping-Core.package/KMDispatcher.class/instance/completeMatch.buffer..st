match
completeMatch: aKeymapEntry buffer: aBuffer
	KMLog log:  morph printString, ' Complete match: ', aKeymapEntry printString.
	KMBuffer uniqueInstance completeMatch.
	self announcer announce: (KMCompleteMatch event: currentEvent from: self).