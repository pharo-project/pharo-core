accessing
allCallsOnIn: aSystemNavigation
	^ (self realClass ifNil: [ ^#() ]) allCallsOn