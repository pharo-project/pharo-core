actions
addRepository: aRepository
	self repository: aRepository.
	self repositoryGroup addRepository: aRepository.
	self repositoryListChanged; 
		changed: #repositorySelection.
	self changedButtons.