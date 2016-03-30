process: anExample withArguments: aBlock
	| value arguments signaledException |
	value := nil.
	arguments := nil.
	signaledException := nil.
	anExample hasValidArguments 
		ifFalse: [ ^ self onArgumentError value: self value: anExample value: arguments ].
	[ arguments := aBlock value ]
		on: Error
		do: [ :exception | ^ self onDependencyError value: self value: anExample value: exception ].
	self do: [ 
			value := self primitiveProcessExample: anExample withArguments: arguments.
			self primitiveProcessExampleAfter: anExample ]
		on: (anExample exceptions copyWithAll: { Halt. Error. Exit. UnhandledError. TestFailure. Deprecation. })
		do: [ :exception | signaledException := exception ].
	processed add: { anExample. value. signaledException }.
	result returnValue: value.
	anExample exceptions signaledBy: signaledException.
	result expectedError: signaledException.
	^ value