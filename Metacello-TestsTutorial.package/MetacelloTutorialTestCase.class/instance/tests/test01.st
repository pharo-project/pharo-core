test01

	| project versionSpec |
	project := self project.

	versionSpec := (project version: '0.1') spec.
	self assert: (versionSpec packages map includesKey: 'Example-Core').
	self assert: (versionSpec packages map at: 'Example-Core') file = 'Example-Core-anon.8'.
	self assert: versionSpec packages map keys size = 1.
	self assert: (versionSpec packages map at: 'Example-Core') repositorySpecs first description = 'http://www.example.com/Example'