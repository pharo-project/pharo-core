initialization
setDefaultChangeSorters

	leftCngSorter := ChangeSorter new myChangeSet: ChangeSet current.
	leftCngSorter parent: self.
	rightCngSorter := ChangeSorter new myChangeSet: ChangeSet secondaryChangeSet.
	rightCngSorter parent: self.