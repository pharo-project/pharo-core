testLatestPackage

	| project version loader latestFile |
	project := self project.
	version := project version: '1.0-baseline'.
	loader := version spec loader.
	latestFile := loader 
		latestPackage: 'GoferFoo' 
		fromRepository: version spec repositorySpecs.
	self assert: latestFile = 'GoferFoo-lr.4'.

	latestFile := loader 
		latestPackage: 'GoferBar' 
		fromRepository: version spec repositorySpecs.
	self assert: latestFile = 'GoferBar-lr.1'.

	latestFile := loader 
		latestPackage: 'GoferFaux' 
		fromRepository: version spec repositorySpecs.
	self assert: latestFile = 'GoferFaux-tg.35'.

	"error condition"
	latestFile := loader 
		latestPackage: 'MetacelloTestConfigurationOfFoo' 
		fromRepository: version spec repositorySpecs.
	self assert: latestFile == nil.
