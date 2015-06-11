assignmenNodes
	^self allChildren select: [:each | each isAssignment].