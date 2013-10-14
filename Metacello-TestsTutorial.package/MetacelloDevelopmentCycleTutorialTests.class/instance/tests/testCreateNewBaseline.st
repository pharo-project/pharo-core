testCreateNewBaseline
	| expected output |
	self
		createConfiguration;
		createDevelopment;
		validateAndSave;
		releaseDevelopment;
		createNewDevelopment;
		createNewBaseline;
		yourself.
	expected := self versionCommonBaselineSpecString.
	Smalltalk
		at: self configurationName
		ifPresent: [ :cl | 
			output := (cl project version: '1.1-baseline') versionSpec printString.
			self assert: output = expected ]