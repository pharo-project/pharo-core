testProjectPrePostLoad

	| project version |
	project := self project.
	version := project version: '3.1'.
	self deny: preLoadExecuted.
	self deny: postLoadExecuted.
	version load.
	self assert: preLoadExecuted.
	self assert: postLoadExecuted.
