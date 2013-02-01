accessing
scheme: symbol
	symbol isNil 
		ifTrue: [ scheme := nil ]
		ifFalse: [ 
			(#(http https ws wss file) includes: symbol) 
				ifTrue: [ scheme := symbol asSymbol ]
				ifFalse: [ (ZnUnknownScheme scheme: symbol) signal ] ]