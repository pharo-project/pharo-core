newFromVersion: aMetacelloVersion inRepository: aConfigurationClass
	^ MCModel2MTModelVisitor new
		visitConfiguration: aConfigurationClass
		withVersion: aMetacelloVersion