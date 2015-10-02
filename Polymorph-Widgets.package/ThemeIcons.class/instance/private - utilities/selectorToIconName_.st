selectorToIconName: aSelector 
	(aSelector endsWith: 'Icon') ifTrue: [ ^ (aSelector allButLast: 4), '.png' ].
	(aSelector endsWith: 'Form') ifTrue: [ ^ (aSelector allButLast: 4), '.png' ].
	
	^ aSelector, '.png'