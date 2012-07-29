organization updating
notifyOfRecategorizedSelector: element from: oldCategory to: newCategory
	SystemAnnouncer uniqueInstance selector: element recategorizedFrom: oldCategory to: newCategory inClass: self.
	SystemAnnouncer uniqueInstance 
		doSilently: [self notifyUsersOfRecategorizedSelector: element from: oldCategory to: newCategory].