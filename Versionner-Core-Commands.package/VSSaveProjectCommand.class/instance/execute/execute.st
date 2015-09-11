execute
	| configClassName |
	
	target ifNil: [ self inform: 'Select the version to commit.'.
				^ self ].
	configClassName := self configurationClass name asString.
	(MetacelloToolBox checkForCriticalValidationIssues: configClassName)
		ifEmpty: [ Komitter openAndCommitToMonticelloWorkingCopiesFilteredBy: self filterBlock ] 
		ifNotEmpty: [ :errors | self alertValidationErrors: errors for: configClassName ]
		
