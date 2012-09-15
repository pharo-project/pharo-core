as yet unclassified
notifyObservers
	SystemAnnouncer uniqueInstance 
		suspendAllWhile: [myClass organization classify: selector under: category].
	priorMethodOrNil isNil
		ifTrue: [SystemAnnouncer uniqueInstance methodAdded: compiledMethod selector: selector inProtocol: category class: myClass requestor: requestor]
		ifFalse: [SystemAnnouncer uniqueInstance methodChangedFrom: priorMethodOrNil to: compiledMethod selector: selector inClass: myClass requestor: requestor].
	"The following code doesn't seem to do anything."
	myClass instanceSide noteCompilationOf: selector meta: myClass isClassSide.
