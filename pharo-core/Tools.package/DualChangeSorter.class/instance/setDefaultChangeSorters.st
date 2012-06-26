initialization
setDefaultChangeSorters

	leftCngSorter := Smalltalk tools changeSorter new myChangeSet: ChangeSet current.
	leftCngSorter parent: self.
	rightCngSorter := Smalltalk tools changeSorter new myChangeSet: ChangeSet secondaryChangeSet.
	rightCngSorter parent: self.