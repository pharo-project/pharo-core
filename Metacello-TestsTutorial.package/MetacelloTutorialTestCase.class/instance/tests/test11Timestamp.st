test11Timestamp
	| project |
	project := self project.

	self assert: ((project version: '1.1') timestamp) = '10/12/2009 09:26'.
