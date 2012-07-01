organization updating
notifyOfRecategorizedSelector: element from: oldCategory to: newCategory
	SystemChangeNotifier uniqueInstance selector: element recategorizedFrom: oldCategory to: newCategory inClass: self.
	SystemChangeNotifier uniqueInstance 
		doSilently: [self notifyUsersOfRecategorizedSelector: element from: oldCategory to: newCategory].