initialization
initialize
	super initialize.
	self matcher 
		matches: '`{:node | node isMessage and: [node parent isCascade and: [node isDirectlyUsed and: [node selector ~~ #yourself]]]}'
		do: [ :node :answer | node ]