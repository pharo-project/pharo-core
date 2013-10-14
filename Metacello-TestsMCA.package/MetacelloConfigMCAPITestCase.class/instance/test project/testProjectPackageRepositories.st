testProjectPackageRepositories
    | project version ref repositoryDescriptions string pkg expected |
    project := self project.
    version := project version: '1.2.3-baseline'.
    ref := version packageNamed: 'Example Project'.
    repositoryDescriptions := ref repositorySpecs collect: [ :repoSpec | repoSpec description ].
    self assert: repositoryDescriptions size = 2.
    self assert: (repositoryDescriptions includes: 'http://www.example.com/ob').
    self assert: (repositoryDescriptions includes: 'http://www.example.com/or').
    string := ref printString.
    expected := 'spec 
	name: ''Example Project'';
	className: ''MetacelloExampleProjectConfig'';
	repository: ''http://www.example.com/ob'';
	repository: ''http://www.example.com/or''.'.
    self assert: string = expected