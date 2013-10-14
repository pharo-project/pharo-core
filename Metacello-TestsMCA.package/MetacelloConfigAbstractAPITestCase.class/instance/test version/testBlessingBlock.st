testBlessingBlock
	| project version |
	project := self project.

	version := project version: '1.0.1-baseline'.
	self assert: version blessing = #testBlessing