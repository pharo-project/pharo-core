newLogEvent: logEventClass
	^ logEventClass new
		serverId: self route;
		yourself