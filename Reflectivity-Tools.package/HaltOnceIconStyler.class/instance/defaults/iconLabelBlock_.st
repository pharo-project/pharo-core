iconLabelBlock: aNode
	^ [(aNode hasProperty: #haltonce) 
		ifTrue: ['inactive, click to reset']
		ifFalse: ['active' ]]