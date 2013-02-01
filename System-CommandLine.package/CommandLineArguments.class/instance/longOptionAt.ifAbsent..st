testing
longOptionAt: aString ifAbsent: absentBlock
	| option optionStart |
	optionStart := '--', aString, '='.
	option := self arguments 
		detect: [ :arg| arg beginsWith: optionStart ] 
		ifNone: [ ^ absentBlock value ].
	^ (option splitOn: '=') second