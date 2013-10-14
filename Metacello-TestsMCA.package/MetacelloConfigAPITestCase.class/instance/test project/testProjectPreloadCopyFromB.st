testProjectPreloadCopyFromB
	| project versionSpec version |
	project := self project.

	versionSpec := (version := project version: '1.2.0-baseline') spec.
	self deny: alternatePreLoadExecuted.
	self deny: preLoadExecuted.
	self deny: postLoadExecuted.
	version load: 'Example Project'.
	self deny: alternatePreLoadExecuted.
	self assert: preLoadExecuted.
	self assert: postLoadExecuted.