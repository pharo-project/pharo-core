as yet unclassified
load
	self hasVersion ifTrue:
		[self version isCacheable
			ifTrue: [version workingCopy repositoryGroup addRepository: repository].
		super load.
		self refresh].