paneMorphSatisfying: aBlock
	^ paneMorphs detect: [:aPane | aBlock value: aPane] ifNone: [nil]