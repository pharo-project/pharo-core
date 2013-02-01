as yet unclassified
notifyObservers
	SystemAnnouncer uniqueInstance 
		suspendAllWhile: [myClass organization classify: selector under: category].
	priorMethodOrNil isNil
		ifTrue: [SystemAnnouncer uniqueInstance methodAdded: compiledMethod selector: selector inProtocol: category class: myClass requestor: requestor]
		ifFalse: [
			SystemAnnouncer uniqueInstance methodChangedFrom: priorMethodOrNil to: compiledMethod selector: selector inClass: myClass requestor: requestor.
			priorCategoryOrNil = category ifFalse: [
       			SystemAnnouncer uniqueInstance selector: selector recategorizedFrom: priorCategoryOrNil to: category inClass: myClass] ].
	"The following code doesn't seem to do anything."
	myClass instanceSide noteCompilationOf: selector meta: myClass isClassSide.
