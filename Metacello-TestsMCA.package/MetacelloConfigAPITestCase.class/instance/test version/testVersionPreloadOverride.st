testVersionPreloadOverride
	| project versionSpec version |
	project := self project.

	versionSpec := (version := project version: '1.0.3-baseline') spec.
	self deny: alternatePreLoadExecuted.
	self deny: preLoadExecuted.
	self deny: postLoadExecuted.
	version load.
	self assert: alternatePreLoadExecuted.
	self deny: preLoadExecuted.
	self assert: postLoadExecuted.