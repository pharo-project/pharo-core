testPackagePreloadOverride
	| project versionSpec version |
	project := self project.

	versionSpec := (version := project version: '1.1.7-baseline') spec.
	self deny: alternatePreLoadExecuted.
	self deny: preLoadExecuted.
	self deny: postLoadExecuted.
	version load.
	self assert: alternatePreLoadExecuted.
	self deny: preLoadExecuted.
	self deny: postLoadExecuted.