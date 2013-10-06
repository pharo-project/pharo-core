removeElement: element
	| oldCat |
	oldCat := self categoryOfElement: element.
	SystemAnnouncer uniqueInstance suspendAllWhile: [
		super removeElement: element].
	self notifyOfChangedSelector: element from: oldCat to: (self categoryOfElement: element).