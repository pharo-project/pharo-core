testCopySpec

	| project version loader repo fakePackage |
	project := self project.
	version := project version: '1.0-baseline'.
	loader := version spec loader.
	repo := MCDictionaryRepository new.
	self assert: repo allVersionInfos size = 0.
	loader 
		copySpec: (version packageNamed: 'GoferFoo')
		from: version spec repositorySpecs
		to: repo.
	self assert: repo allVersionInfos size = 1.
	
	"error condition"
	fakePackage := version packageNamed: 'GoferFoo'.
	fakePackage name: 'MetacelloTestConfigurationOfFoo'.
	self assert: (loader 
		copySpec: fakePackage
		from: version spec repositorySpecs
		to: repo) == nil
