accessing method dictionary
addSelector: selector withMethod: compiledMethod notifying: requestor
	| priorMethodOrNil |
	priorMethodOrNil := self compiledMethodAt: selector ifAbsent: [nil].
	self addSelectorSilently: selector withMethod: compiledMethod.
	priorMethodOrNil isNil
		ifTrue: [SystemChangeNotifier uniqueInstance methodAdded: compiledMethod selector: selector inClass: self requestor: requestor]
		ifFalse: [SystemChangeNotifier uniqueInstance methodChangedFrom: priorMethodOrNil to: compiledMethod selector: selector inClass: self requestor: requestor].