testNextDevelopmentVersionString
	| workflow nextVersion |
	workflow := project devWorkflow.
	nextVersion := workflow nextDevelopmentVersionString: '1.0-baseline'.
	self assert: nextVersion equals: '1.1'.
	nextVersion := workflow nextDevelopmentVersionString: 'baseline-1.3'.
	self assert: nextVersion equals: '1.4'.