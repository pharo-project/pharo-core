testValidateAndSave
	| repo allVersionsSize |
	repo := Smalltalk at: self repositoryName.
	allVersionsSize := repo allVersionInfos size.
	self
		createConfiguration;
		createDevelopment;
		validateAndSave;
		yourself.
	self assert: (MetacelloToolBox validateConfiguration: (Smalltalk at: self configurationName)) isEmpty.
	self assert: repo allVersionInfos size = (allVersionsSize + 1)