testBaseline11PrePostLoadLoad

	| project version loader |
	project := self project.
	version := project version: '1.1-baseline'.
	self deny: preLoadExecuted.
	self deny: postLoadExecuted.
	version load.
	self assert: preLoadExecuted.
	self assert: postLoadExecuted.
