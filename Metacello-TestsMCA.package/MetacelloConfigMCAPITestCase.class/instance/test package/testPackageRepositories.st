testPackageRepositories
	| project versionSpec version pkg repositoryDescriptions string expected |
	project := self project.

	versionSpec := (version := project version: '1.0.6-baseline') spec.
	pkg := version packageNamed: 'Example-Core'.
	repositoryDescriptions := pkg repositorySpecs collect: [:repoSpec | repoSpec description ].
	self assert: repositoryDescriptions size = 2.
	self assert: (repositoryDescriptions includes: 'http://www.example.com/ob').
	self assert: (repositoryDescriptions includes: 'http://www.example.com/or').
	string := pkg printString.
	expected := 'spec 
	name: ''Example-Core'';
	repositories: [
		spec
			repository: ''http://www.example.com/ob'';
			repository: ''http://www.example.com/or'' ].'.
	self assert: string = expected
