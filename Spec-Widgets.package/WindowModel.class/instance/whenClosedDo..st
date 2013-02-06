protocol-events
whenClosedDo: aBlock

	isClosedHolder whenChangedDo: [:bool | bool ifTrue: aBlock ]