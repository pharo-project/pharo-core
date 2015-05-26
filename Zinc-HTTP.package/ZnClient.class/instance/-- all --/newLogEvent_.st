newLogEvent: logEventClass
	^ logEventClass new
		clientId: self clientId;
		yourself