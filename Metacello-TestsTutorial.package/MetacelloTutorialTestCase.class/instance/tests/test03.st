test03

	| project versionSpec |
	project := self project.

	versionSpec := (project version: '0.3') spec.
	self assert: (versionSpec packages map includesKey: 'Example-Core').
	self assert: (versionSpec packages map at: 'Example-Core') file = 'Example-Core-anon.10'.
	self assert: (versionSpec packages map at: 'Example-Tests') file = 'Example-Tests-anon.3'.
	self assert: versionSpec packages map keys size = 2.
	self assert: (versionSpec packages map at: 'Example-Core') repositorySpecs first description = 'http://www.example.com/Example'