as yet unclassified
load
	self hasVersion ifTrue:
		[super load.
		self version workingCopy repositoryGroup addRepository: repository].