initialize
	super initialize.
	self matcher 
		matches: '`{:node | node isBlock and: [node parent isSequence 
			and: [ node isLastStatementInBlock not ]]}'
		do: [ :node :answer | node ]