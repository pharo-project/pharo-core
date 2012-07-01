visitor-double dispatching
acceptArrayNode: anArrayNode
	self bracketWith: '{}' around: [ self formatArray: anArrayNode ]