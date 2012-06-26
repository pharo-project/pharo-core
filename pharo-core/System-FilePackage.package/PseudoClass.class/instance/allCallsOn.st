accessing
allCallsOn
	^ (self realClass ifNil: [ ^#() ]) allCallsOn