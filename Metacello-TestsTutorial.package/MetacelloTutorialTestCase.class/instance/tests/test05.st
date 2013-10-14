test05

	| project versionSpec |
	project := self project.

	versionSpec := (project version: '0.5') spec.
	self assert: (versionSpec packages map includesKey: 'Example-Core').
	self assert: (versionSpec packages map at: 'Example-Core') file = 'Example-Core-anon.11'.
	self assert: (versionSpec packages map at: 'Example-Tests') file = 'Example-Tests-anon.3'.
	self assert: (versionSpec packages map at: 'Example-AddOn') file = 'Example-AddOn-anon.1'.
	self assert: versionSpec packages map keys size = 3.
	self assert: (versionSpec repositories map at: 'http://www.example.com/Example') description = 'http://www.example.com/Example'