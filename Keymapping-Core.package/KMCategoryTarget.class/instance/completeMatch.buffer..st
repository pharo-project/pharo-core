matching
completeMatch: aKeymap buffer: aBuffer
	KMLog log: 'Complete match: ', aKeymap printString.
	KMBuffer uniqueInstance completeMatch.
	aKeymap action cull: target value cull: morph cull: aBuffer first