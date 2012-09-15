accessing method dictionary
removeSelector: selector 
	"Remove the message whose selector is given from the method 
	dictionary of the receiver, if it is there. Answer nil otherwise."
	
	| priorMethod priorProtocol | 
	priorMethod := self compiledMethodAt: selector ifAbsent: [^ nil].
	priorProtocol := self whichCategoryIncludesSelector: selector.
	super removeSelector: selector.
	SystemAnnouncer uniqueInstance 
		suspendAllWhile: [self updateOrganizationSelector: selector oldCategory: priorProtocol newCategory: nil].
	SystemAnnouncer uniqueInstance 
			methodRemoved: priorMethod selector: selector inProtocol: priorProtocol class: self.