testLastVersion
	| project version |
	project := self project.

	version := project lastVersion.
	self assert: version versionString = '1.0-beta.0'