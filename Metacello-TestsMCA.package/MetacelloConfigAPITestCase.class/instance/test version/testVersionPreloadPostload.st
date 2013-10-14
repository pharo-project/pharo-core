testVersionPreloadPostload
	| project versionSpec version |
	project := self project.

	versionSpec := (version := project version: '1.0.2-baseline') spec.
	self deny: preLoadExecuted.
	self deny: postLoadExecuted.
	version load.
	self assert: preLoadExecuted.
	self assert: postLoadExecuted.