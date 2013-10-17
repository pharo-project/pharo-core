validateClassName
	"Validate the new class name. Raise warning if invalid."

	(name detect: [ :c | (c isAlphaNumeric or: [ c = $_ ]) not ] ifNone: [])
		ifNotNil: [ :c | 
			InvalidGlobalName 
				signal: 'Invalid character: ''', c printString, ''''
				for: name ].

	name first canBeGlobalVarInitial 
		ifFalse: [
			InvalidGlobalName 
				signal: 'Class name does not start with a valid Global Var Initial'
				for: name ].
