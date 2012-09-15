accessing method dictionary
addAndClassifySelector: selector withMethod: compiledMethod inProtocol: category notifying: requestor
	| priorMethodOrNil oldProtocol newProtocol |
	priorMethodOrNil := self compiledMethodAt: selector ifAbsent: [nil].
	self addSelectorSilently: selector withMethod: compiledMethod.
	oldProtocol := self organization categoryOfElement: selector.
	SystemAnnouncer uniqueInstance 
		suspendAllWhile: [self organization classify: selector under: category].
	newProtocol := self organization categoryOfElement: selector.
	priorMethodOrNil isNil
		ifTrue: [SystemAnnouncer uniqueInstance methodAdded: compiledMethod selector: selector inProtocol: category class: self requestor: requestor]
		ifFalse: [SystemAnnouncer uniqueInstance methodChangedFrom: priorMethodOrNil to: compiledMethod selector: selector inClass: self oldProtocol: oldProtocol newProtocol: newProtocol requestor: requestor].