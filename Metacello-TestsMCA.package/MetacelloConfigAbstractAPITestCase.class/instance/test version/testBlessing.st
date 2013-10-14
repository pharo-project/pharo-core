testBlessing
	| project version |
	project := self project.

	version := project version: '1.0-baseline'.
	self assert: version blessing = #testBlessing