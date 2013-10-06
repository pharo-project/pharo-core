allCallsOn
	^ (self realClass ifNil: [ ^#() ]) allCallsOn