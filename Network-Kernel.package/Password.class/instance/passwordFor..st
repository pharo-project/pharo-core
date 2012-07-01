accessing
passwordFor: serverDir
	"Returned the password from one of many sources.  OK if send in a nil arg."

	| sp msg |
	cache ifNotNil: [^ cache].
	sequence ifNotNil: [
		(sp := self serverPasswords) ifNotNil: [
			sequence <= sp size ifTrue: [^ sp at: sequence]]].
	msg := serverDir isRemoteDirectory
		ifTrue: [serverDir moniker]
		ifFalse: ['this directory'].
	(serverDir user = 'anonymous') & (serverDir typeWithDefault == #ftp) ifTrue: [
			^ cache := UIManager default request: 'Please let this anonymous ftp\server know your email address.\This is the polite thing to do.' withCRs
			initialAnswer: 'yourName@company.com'].

	^ cache := UIManager default requestPassword: 'Password for ', serverDir user, ' at ', msg, ':'.
		"Diff between empty string and abort?"