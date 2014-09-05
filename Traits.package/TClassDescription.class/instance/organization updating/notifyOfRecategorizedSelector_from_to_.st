notifyOfRecategorizedSelector: element from: oldCategory to: newCategory
	SystemAnnouncer uniqueInstance 
		methodRecategorized: (self compiledMethodAt: element ifAbsent: [ nil ]) 
		oldProtocol: oldCategory.
	SystemAnnouncer uniqueInstance 
		suspendAllWhile: [self notifyUsersOfRecategorizedSelector: element from: oldCategory to: newCategory].