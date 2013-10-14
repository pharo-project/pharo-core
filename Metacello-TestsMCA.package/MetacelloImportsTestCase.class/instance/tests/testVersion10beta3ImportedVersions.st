testVersion10beta3ImportedVersions
	| project version |
	project := self project.

	version := project version: '1.0-beta.3-baseline'.
	self assert: version importedVersions size = 1.
	self assert: (version importedVersions includes: '1.0-beta.0-baseline').

	version := project version: '1.0-beta.3'.
	self assert: version importedVersions size = 1.
	self assert: (version importedVersions includes: '1.0-beta.3-baseline').
