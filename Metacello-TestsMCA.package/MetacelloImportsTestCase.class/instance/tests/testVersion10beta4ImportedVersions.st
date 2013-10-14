testVersion10beta4ImportedVersions

	| project loadedPackages version loader |
	project := self project.

	version := project version: '1.0-beta.4'.
	self assert: version importedVersions size = 2.
	self assert: (version importedVersions includes: '1.0-beta.3').
	self assert: (version importedVersions includes: '1.0-beta.3-extra').
