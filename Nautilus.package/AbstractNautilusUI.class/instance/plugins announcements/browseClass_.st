browseClass: aClass
	
	self showGroups: false.
	self selectedPackage: (self parentOfClass: aClass).
	self selectedClass: aClass.
	self updateBothView