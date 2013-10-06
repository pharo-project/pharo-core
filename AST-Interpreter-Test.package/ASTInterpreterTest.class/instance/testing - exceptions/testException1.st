testException1
	[ (self interpret: 'Error signal: #anErrorHappened') ]
		on: InterpretationError
		do: [ :err | | originalError |
			originalError := err cause.
			self assert: (originalError isKindOf: Error).
			self assert: originalError messageText equals: #anErrorHappened.
			^ #success ].
	self fail.