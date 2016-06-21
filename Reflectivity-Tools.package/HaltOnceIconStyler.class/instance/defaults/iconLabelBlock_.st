iconLabelBlock: aNode
	^ [(aNode hasProperty: #haltonce) 
		ifTrue: ['inactive, click to turn on']
		ifFalse: ['active, click to turn off' ]]