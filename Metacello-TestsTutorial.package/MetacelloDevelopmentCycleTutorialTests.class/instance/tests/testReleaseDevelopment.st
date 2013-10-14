testReleaseDevelopment
	| repo repoVersionsSize altRepo altRepoVersionsSize output expected |
	repo := Smalltalk at: self repositoryName.
	repoVersionsSize := repo allVersionInfos size.
	altRepo := Smalltalk at: self alternatRepositoryName.
	altRepoVersionsSize := altRepo allVersionInfos size.
	self
		createConfiguration;
		createDevelopment;
		validateAndSave;
		releaseDevelopment;
		yourself.
	self assert: repo allVersionInfos size = (repoVersionsSize + 2).
	self assert: altRepo allVersionInfos size = (altRepoVersionsSize + 1).
	expected := self version10ReleaseVersionSpecString.
	Smalltalk
		at: self configurationName
		ifPresent: [ :cl | | versionSpec |
			versionSpec := (cl project version: '1.0') versionSpec.
			versionSpec timestamp: ''.
			output :=  versionSpec printString.
			self assert: output = expected.
			self should: [ cl project version: #development ] raise: Error.
			versionSpec := (cl project version: #stable) versionSpec.
			versionSpec timestamp: ''.
			output :=  versionSpec printString.
			self assert: output = expected ]