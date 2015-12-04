runExample: example fromContainer: aContainer
	" this is not the testing tool we have in mind, but a temporary solution to integrate examples into the currently existing testing tools "
	| exampleResult |
	example ignoreTest ifTrue: [ ^ self ].
	self shouldnt: [ exampleResult := example run ] raise: Error.
	exampleResult isError 
		ifTrue: [ ^ result class signalErrorWith: exampleResult gtDisplayString  ].
	exampleResult isFailure 
		ifTrue: [ ^ result class signalFailureWith: exampleResult gtDisplayString  ] 