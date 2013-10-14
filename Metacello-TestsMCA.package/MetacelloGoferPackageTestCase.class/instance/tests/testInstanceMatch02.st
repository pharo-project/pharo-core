testInstanceMatch02

	self deny: 
		((MetacelloGoferPackage name: 'GoferBar' packageFilename: 'GoferBar.branch-lr.2')
			matches: (GoferVersionReference name: 'GoferBar-jf.1')).
