showOnlyRepositoriesFromWorkingCopy

	self class toggleShowOnlyRepositoriesFromWorkingCopy.
	"Clear repository selection because it might be filtered when displaying only repositories from working copy"
	self repositorySelection: 0.
	self repositoryListChanged.
	