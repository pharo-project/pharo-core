accessing method dictionary
addAndClassifySelector: selector withMethod: compiledMethod inProtocol: category notifying: requestor 
	| priorMethodOrNil oldProtocol newProtocol |
	
	priorMethodOrNil := self
				compiledMethodAt: selector
				ifAbsent: [].
	
	"We categorize first, so the users can use the categorization at the add moment"			
	oldProtocol := self organization categoryOfElement: selector.
	SystemChangeNotifier uniqueInstance
		doSilently: [ self organization classify: selector under: category ].
	
	self addSelectorSilently: selector withMethod: compiledMethod.
	
	newProtocol := self organization categoryOfElement: selector.
	priorMethodOrNil isNil
		ifTrue: [
			SystemChangeNotifier uniqueInstance
				methodAdded: compiledMethod
				selector: selector
				inProtocol: category
				class: self
				requestor: requestor]
		ifFalse: [
			SystemChangeNotifier uniqueInstance
				methodChangedFrom: priorMethodOrNil
				to: compiledMethod
				selector: selector
				inClass: self
				oldProtocol: oldProtocol
				newProtocol: newProtocol
				requestor: requestor]