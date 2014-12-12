errorInvalidIndex: anIndex
	"squeak does not have SubscriptOutOfBounds."
	(Smalltalk
		at: #SubscriptOutOfBounds
		ifAbsent: [Error signal: 'Invalid index: ', anIndex printString]) signalFor: anIndex