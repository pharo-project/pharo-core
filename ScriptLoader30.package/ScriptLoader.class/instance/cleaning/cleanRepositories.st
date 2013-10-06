cleanRepositories
	"self new cleanRepositories"
	
	MCRepositoryGroup instVarNamed: 'default' put: nil. 
	self removeAllRepositories.
	self addHomeRepositoryToAllPackages