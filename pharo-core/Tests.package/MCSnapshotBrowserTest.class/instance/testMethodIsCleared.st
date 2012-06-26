testing
testMethodIsCleared
	self clickOnListItem: self mockCategoryName.
	self clickOnListItem: 'MCMockClassA'.
	self clickOnListItem: 'boolean'.
	self clickOnListItem: 'falsehood'.
	self clickOnListItem: '-- all --'.
	
	self denyAListHasSelection: 'falsehood'.