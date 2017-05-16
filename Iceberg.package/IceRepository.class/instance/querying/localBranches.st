localBranches
	^ self backend localBranchNames collect: [ :branchName | 
		IceLocalBranch named: branchName inRepository: self ]