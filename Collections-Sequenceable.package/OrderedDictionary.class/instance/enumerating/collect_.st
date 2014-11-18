collect: aBlock
	^ self speciesNewFrom:
		(self associations collect: [:each |
			each key -> (aBlock value: each value)])