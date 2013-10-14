testProjectCopyPackageRepositories
    | project version ref repositoryDescriptions string pkg expected |
    project := self project.
    version := project version: '1.3.0-baseline'.
    ref := version packageNamed: 'Copy Project'.
    repositoryDescriptions := ref repositorySpecs collect: [ :repoSpec | repoSpec description ].
    self assert: repositoryDescriptions size = 2.
    self assert: (repositoryDescriptions includes: 'http://www.example.com/ob').
    self assert: (repositoryDescriptions includes: 'http://www.example.com/or').
    string := ref printString.
    expected := 'spec 
	name: ''Copy Project'';
	className: ''MetacelloExampleProjectConfig'';
	versionString: ''1.0-baseline'';
	preLoadDoIt: #''preloadDoIt'';
	postLoadDoIt: #''postloadDoIt'';
	repository: ''http://www.example.com/ob'';
	repository: ''http://www.example.com/or''.'.
    self assert: string = expected