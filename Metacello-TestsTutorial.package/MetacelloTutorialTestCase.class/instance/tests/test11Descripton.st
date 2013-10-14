test11Descripton
	| project |
	project := self project.

	self assert: ((project version: '1.1') description) = 'Example of a complete version specification'.
