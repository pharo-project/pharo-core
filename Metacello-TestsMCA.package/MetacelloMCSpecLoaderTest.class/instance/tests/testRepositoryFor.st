testRepositoryFor

	| project version loader pkgSpec repo1 repo2 |
	project := self project.
	version := project version: '2.0-baseline'.
	loader := version spec loader.
	pkgSpec := version packageNamed: 'GoferBar'.
	repo1 := self monticelloRepository.
	repo2 := self alternateRepository.

	pkgSpec file: 'GoferBar.branch-lr.1'.
	self assert: 
		(loader 
			repositoryFor: pkgSpec 
			from: version spec repositorySpecs) == repo1.
	pkgSpec file: 'GoferBar-dkh.25'.
	self assert: 
		(loader 
			repositoryFor: pkgSpec 
			from: version spec repositorySpecs) == repo2.

	"error condition"
	pkgSpec file: 'MetacelloTestConfigurationOfFoo-dkh.1'.
	self assert: 
		(loader 
			repositoryFor: pkgSpec 
			from: version spec repositorySpecs) == nil.
