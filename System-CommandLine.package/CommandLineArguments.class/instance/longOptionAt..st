testing
longOptionAt: aString
	| option optionStart |
	optionStart := '--', aString, '='.
	option := self arguments 
		detect: [ :arg| arg beginsWith: optionStart ] 
		ifNone: [ ^ nil ].
	^ (option splitOn: '=') second