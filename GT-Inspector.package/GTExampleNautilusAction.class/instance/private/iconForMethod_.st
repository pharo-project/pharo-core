iconForMethod: aCompiledMethod
	| result |
	(result := self resultForMethod: aCompiledMethod)
		ifNil: [ ^ Smalltalk ui icons iconNamed: #testNotRunIcon ].
	result isSuccess
		ifTrue: [ ^ Smalltalk ui icons iconNamed: #testGreenIcon ].
	result isFailure
		ifTrue: [ ^ Smalltalk ui icons iconNamed: #testYellowIcon ].
	result isError
		ifTrue: [ ^ Smalltalk ui icons iconNamed: #testRedIcon ].
	^ Smalltalk ui icons iconNamed: #testNotRunIcon