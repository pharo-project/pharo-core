testProjectPreloadCopyFrom
	| project versionSpec version |
	project := self project.

	versionSpec := (version := project version: '1.2.0-baseline') spec.
	self deny: alternatePreLoadExecuted.
	self deny: preLoadExecuted.
	self deny: postLoadExecuted.
	version load: 'Copied Example'.
	self assert: alternatePreLoadExecuted.
	self deny: preLoadExecuted.
	self assert: postLoadExecuted.