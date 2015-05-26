select: aBlock
	^ self speciesNewFrom:
		(self associations select: [:each | aBlock value: each value])