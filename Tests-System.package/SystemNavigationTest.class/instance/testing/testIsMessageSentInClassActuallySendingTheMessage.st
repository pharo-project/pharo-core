testIsMessageSentInClassActuallySendingTheMessage
	"self debug: #testIsMessageSentInClassActuallySendingTheMessage"
	|class|
	class := self classFactory newClass.
	class compileSilently: 'meth self m'.
	self assert: (self systemNavigationToTest isMessage: #m sentInClass: class).
	self assert: (self systemNavigationToTest allSendersOf: #m inClass: class) size = 1