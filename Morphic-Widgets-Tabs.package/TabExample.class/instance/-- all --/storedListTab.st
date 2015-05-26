storedListTab
	
	^ Tab label: 'Stored List Model' icon: Smalltalk ui icons smallHelpIcon retrievingBlock: [ listModel buildWithSpec ]