testLogging
	| client logEventCollection |
	logEventCollection := OrderedCollection new.
	ZnLogEvent announcer when: ZnLogEvent do: [ :event | logEventCollection add: event ]. 
	(client := ZnClient new)
		clientId: #C1;
		beOneShot.
	client	get: self smallHtmlUrl.
	client close.
	ZnLogEvent announcer 
		unsubscribe: logEventCollection.
	self deny: logEventCollection isEmpty.
	self assert: logEventCollection anyOne clientId equals: #C1