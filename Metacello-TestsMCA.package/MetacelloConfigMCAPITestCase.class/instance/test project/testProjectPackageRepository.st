testProjectPackageRepository
    | project version ref string expected |
    project := self project.
    version := project version: '1.2.2-baseline'.
    ref := version packageNamed: 'Example Project'.
    self assert: ref repositorySpecs first description = 'http://www.example.com/ob'.
    string := ref printString.
    expected := 'spec 
	name: ''Example Project'';
	className: ''MetacelloExampleProjectConfig'';
	repository: ''http://www.example.com/ob''.'.
    self assert: string = expected