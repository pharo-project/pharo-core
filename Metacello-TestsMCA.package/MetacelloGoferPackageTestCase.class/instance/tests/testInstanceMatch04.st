testInstanceMatch04

	self deny: 
		((MetacelloGoferPackage name: 'ConfigurationOfMagritte' packageFilename: 'ConfigurationOfMagritte')
			matches: (GoferVersionReference name: 'ConfigurationOfMagritte2-dkh.137')).
