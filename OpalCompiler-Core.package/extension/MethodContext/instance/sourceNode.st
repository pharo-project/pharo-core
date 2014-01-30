sourceNode
	^ self isBlockContext
		ifTrue: [ closureOrNil sourceNode ]
		ifFalse: [ self method sourceNode ]