private-source
privateExtractToTemporaryBetween: anInterval from: aMethod
	| name |
	
	name := (self request: 'Enter the new variable name:').
	name ifNil: [ ^ nil ].

	^ RBExtractToTemporaryRefactoring
		model: environment
		extract: anInterval
		to: name
		from: aMethod selector
		in: aMethod methodClass