testing
testIsMessageSentInPackageWithClassesActuallySendngTheMessage
	| classesSendingMessage myPackageName |
	
	myPackageName := 'ACategoryForTesting'.
	5 timesRepeat: [self classFactory newClassInCategory: (myPackageName, '-One') asSymbol].
	5 timesRepeat: [self classFactory newClassInCategory: (myPackageName, '-Two') asSymbol].
	classesSendingMessage := (self classFactory createdClasses asArray first: 2), (self classFactory createdClasses asArray last: 3).
	classesSendingMessage do: [:class|	
		class compileSilently: 'meth self m'].
	self assert: (self systemNavigationToTest isMessage: #m sentInPackageNamed: myPackageName).
	self assert: (self systemNavigationToTest allSendersOf: #m inPackageNamed: myPackageName) size = 5