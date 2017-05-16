repositoryActions
	^ { 
	self newPullRequestAction. 
	self removeOldBranchesAction. 
	}