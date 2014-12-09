new
	nextHash = SmallInteger maxVal ifTrue: [
		nextHash := 0 ].
	nextHash := nextHash + 1.
	^super new
		hash: nextHash;
		yourself