testLogging
	| client logEventCollection |
	logEventCollection := OrderedCollection new.
	ZnLogEvent announcer 
		"when: ZnLogEvent send: #add: to: logEventCollection. " "maintain Pharo 2 compatibility"
		on: ZnLogEvent send: #add: to: logEventCollection. 
	(client := ZnClient new)
		clientId: #C1;
		beOneShot.
	client	get: self smallHtmlUrl.
	client close.
	ZnLogEvent announcer 
		unsubscribe: logEventCollection.
	self deny: logEventCollection isEmpty.
	self assert: logEventCollection anyOne clientId equals: #C1