visitSequenceNode: aSequenceNode
	self styleTempBars: aSequenceNode.
	aSequenceNode temporaries do: [ :temporary | self addStyle: #patternTempVar forNode: temporary ].
	aSequenceNode statements do: [ :each | self visitNode: each ].
	aSequenceNode periods do: [ :pos | self addStyle: #statementSeparator from: pos to: pos ]