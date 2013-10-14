testLatestVersion

	| version |
	version := self project  latestVersion.
	self assert: version versionString = '0.9'