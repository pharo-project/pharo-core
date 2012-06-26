as yet unclassified
notifyObservers
	SystemChangeNotifier uniqueInstance 
		doSilently: [myClass organization classify: selector under: category].
	priorMethodOrNil isNil
		ifTrue: [SystemChangeNotifier uniqueInstance methodAdded: compiledMethod selector: selector inProtocol: category class: myClass requestor: requestor]
		ifFalse: [SystemChangeNotifier uniqueInstance methodChangedFrom: priorMethodOrNil to: compiledMethod selector: selector inClass: myClass requestor: requestor].
	"The following code doesn't seem to do anything."
	myClass instanceSide noteCompilationOf: selector meta: myClass isClassSide.
