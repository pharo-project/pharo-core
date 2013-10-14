testCreateDevelopment
	| expected output |
	self
		createConfiguration;
		createDevelopment;
		yourself.
	expected := self version10DevelopmentVersionSpecString.
	Smalltalk
		at: self configurationName
		ifPresent: [ :cl | | versionSpec |
			versionSpec := (cl project version: '1.0') versionSpec.
			versionSpec timestamp: ''.
			output :=  versionSpec printString.
			self assert: output = expected.
			versionSpec := (cl project version: #development) versionSpec.
			versionSpec timestamp: ''.
			output :=  versionSpec printString.
			self assert: output = expected ]