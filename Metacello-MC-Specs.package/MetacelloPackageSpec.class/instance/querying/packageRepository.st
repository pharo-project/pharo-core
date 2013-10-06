packageRepository
	
	self repositorySpecs isEmpty ifTrue: [ ^nil ].
	^self repositorySpecs first