test11Author
	| project |
	project := self project.

	self assert: ((project version: '1.1') author) = 'dkh'.
